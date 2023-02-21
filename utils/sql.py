import logging
import pandas as pd
from sqlalchemy import text


def execute_sql(sql_file, engine, params=None):
    try:
        path = f"sql/{sql_file}"
    except FileNotFoundError:
        print(f"File {sql_file} not found in {path}")

    with open(path, "r") as file:
        try:
            file.seek(0)
            sql = file.read().format(**params)
        except TypeError:
            file.seek(0)
            sql = file.read()
        logging.info(f"Querying: {sql}")
        with engine.connect() as conn:
            df = pd.read_sql(text(sql), conn)
    return df

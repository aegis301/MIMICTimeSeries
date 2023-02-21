from utils.connect import POSTGRES_ENGINE
from utils.sql import execute_sql
import os
import logging

logging.basicConfig(level=logging.INFO)


def get_data(sql_directory="sql/", data_directory="data/", engine=POSTGRES_ENGINE):
    """
    Iterate over directory executing all SQL files and exporting the results as csv to data directory.
    """
    for file in os.listdir(sql_directory):
        if file.endswith(".sql"):
            df = execute_sql(file, engine)
            logging.info(f"Imported {file}")
            df.to_csv(
                os.path.join(data_directory, file.replace(".sql", ".csv")).replace(
                    "get_", ""
                ),
                index=False,
            )
            logging.info(f"Exported {file}")


if __name__ == "__main__":
    get_data()

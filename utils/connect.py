import os
import logging
import pandas as pd
from sqlalchemy import create_engine, text
from dotenv import load_dotenv

load_dotenv()

POSTGRES_DIALECT = os.getenv("POSTGRES_DIALECT")
POSTGRES_DRIVER = os.getenv("POSTGRES_DRIVER")
POSTGRES_USER = os.getenv("POSTGRES_USER")
POSTGRES_PASSWORD = os.getenv("POSTGRES_PASSWORD")
POSTGRES_HOST = os.getenv("POSTGRES_HOST")
POSTGRES_PORT = os.getenv("POSTGRES_PORT")
POSTGRES_DATABASE = os.getenv("POSTGRES_DATABASE")

SQL_PATH = "sql/"
connection_string = f"{POSTGRES_DIALECT}+{POSTGRES_DRIVER}://{POSTGRES_USER}:{POSTGRES_PASSWORD}@{POSTGRES_HOST}:{POSTGRES_PORT}/{POSTGRES_DATABASE}"

POSTGRES_ENGINE = create_engine(
    connection_string,
    echo=False,
    future=True,
)  # create sqlalchemy engine

if __name__ == "__main__":
    print(connection_string)
    print(POSTGRES_ENGINE)

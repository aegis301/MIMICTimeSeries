# MIMICTimeSeries

## Data Preparation

In order to get the data used in this repo, execute `data.py` using

```shell
python data.py
```

This will download the data from a local MIMIC-IV database and save it in the `data` folder.

### Prerequisites

Expects an `.env` file in the root directory with the following variables:

```shell
POSTGRES_DIALECT = "postgresql"
POSTGRES_DRIVER = "psycopg2"
POSTGRES_USER = "postgres"
POSTGRES_PASSWORD = "postgres"
POSTGRES_HOST = "localhost"
POSTGRES_PORT = "5432"
POSTGRES_DATABASE = "mimiciv"
DATA_PATH = path_to_data_folder
```


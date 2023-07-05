import traceback
from util.sql_helpers import SchemaConnection, connection_handler


@connection_handler
def main(schema_con: SchemaConnection):
    schema_con.SOURCE


if __name__ == "__main__":
    try:
        main()
    except:
        print("An error occurred while generating data:")
        traceback.print_exc()
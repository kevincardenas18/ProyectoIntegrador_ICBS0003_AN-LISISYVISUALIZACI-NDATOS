import traceback
from util.sql_helpers import SchemaConnection, connection_handler, install_database
import pandas as pd

@connection_handler
def main(schema_con: SchemaConnection):
    install_database('ImpordadoraAndina.sql')
    install_database('SorDB.sql')
    install_database('StgDB.sql')
    # schema_con.SOURCE
    # actors = pd.read_sql('SELECT * FROM Categoria',schema_con.SOURCE)
    # print(actors)
    # return actors

if __name__ == "__main__":
    try:
        main()
    except:
        print("An error occurred while generating data:")
        traceback.print_exc()

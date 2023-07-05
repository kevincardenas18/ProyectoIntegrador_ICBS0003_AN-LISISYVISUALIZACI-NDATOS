from sqlalchemy import create_engine
import traceback


class DbConnection():
    
    def __init__(self, type, host, port, user, password, database):
        
        self.connection = None
        self.type = type
        self.host = host
        self.port = port
        self.user = user
        self.password = password
        self.database = database

    def start(self):
        
        try:
            if self.type == 'mysql':
                db_connection_str = 'mysql+pymysql://'+self.user+':' + \
                    self.password+'@'+self.host+':'+self.port+'/'+self.database
                self.connection = create_engine(db_connection_str)
                print('Connection to the database established successfully')
                return self.connection
            else:
                return -1 # Tipo de base de datos no compatible
        except Exception as e:
            print('Error in connection\n'+str(e))
            return -2 # Error al establecer la conexión

    def stop(self):
        print('Connection to the database close')
        self.connection.dispose()

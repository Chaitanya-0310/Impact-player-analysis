from sqlalchemy import create_engine
from configparser import ConfigParser, Error


def read_ini_file(filename='database.ini', section='postgresql'):
    
    """ read parser file """
    parser = ConfigParser()
    parser.read(filename)

    config={}
    if parser.has_section(section):
        params = parser.items(section)
    else:
        raise Exception('Section {0} not found in the {1} file'.format(section, filename))   

    for param in params:
        config[param[0]] = param[1]

    return config

def load_config():
    """  Get config String """

    # get data from database.ini config file
    config = read_ini_file()  
  
    config_string = "postgresql://{}:{}@{}:{}/{}".format(config['user'],config['password'],config['host'],config['port'],config['database'])
    return config_string

def connect(config):
    """ Connect to the PostgreSQL database server """

    try:
        # connecting to the PostgreSQL server
        engine = create_engine(config) 
        print('Connected to the PostgreSQL server.')
        return engine
    except Exception as error:
        print(error)

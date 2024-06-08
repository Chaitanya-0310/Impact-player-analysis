from sqlalchemy import create_engine
from configparser import ConfigParser

def load_config(filename='database.ini', section='postgresql'):
    parser = ConfigParser()
    parser.read(filename)

    # get section, default to postgresql
    config = {}
   
    if parser.has_section(section):
        params = parser.items(section)
        for param in params:
            config[param[0]] = param[1]
    else:
        raise Exception('Section {0} not found in the {1} file'.format(section, filename))   
    
  
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


if __name__ == '__main__':
    config_string = load_config()
    engine = connect(config_string)
    print(engine)

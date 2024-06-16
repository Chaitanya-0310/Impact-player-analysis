import os
import pandas as pd
from sqlalchemy import text 
from config import load_config, connect 

def import_and_load(table_name,schema,csv_file_path):
    """ Import and Load table from csv and grant permission to all users """

    # import csv file 
    csv_file_path = os.path.join(os.getcwd(),csv_file_path)
    csv_file = pd.read_csv(csv_file_path)

    # fill nulls
    csv_file = csv_file.fillna('')

    # get config string
    config_string = load_config()
    
    # get engine
    engine = connect(config_string)

    # push data to sql using engine
    csv_file.to_sql(name=table_name,con=engine,index=False,schema=schema,if_exists='replace')

    # give permissions to all users
    engine.execute(text(f"grant all on {schema}.{table_name} to smit,tanmay,chaitanya,shivam"))
    

if __name__ == '__main__':
    # load data from csv files
    schema = "impact_player_analysis"
    import_and_load("ball_by_ball",schema,"Data/ball_by_ball.csv")
    import_and_load("matches",schema,"Data/matches.csv")
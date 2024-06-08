import os
import pandas as pd
import numpy as np
from config import load_config, connect

def import_and_load():
    # import csv file 
    csv_file_path = os.path.join(os.getcwd(),'Data/ball_by_ball.csv')
    csv_file = pd.read_csv(csv_file_path)

    csv_file = csv_file.fillna('')

    config_string = load_config()
    engine = connect(config_string)

    csv_file.to_sql('data',engine,index=False,schema='impact_player_analysis',if_exists='replace')

if __name__ == '__main__':
    import_and_load()
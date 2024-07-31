# Impact Player Analysis 

## Introduction

Cricket is the second most popular sport globally, having originated in England in the late 16th century. It is played in numerous countries, including India, Australia, Scotland, South Africa, England, Ireland,etc. The game consists of two innings, with each team taking turns to bowl and bat. The decision of which team bats first is determined by a coin toss. The team batting first sets a target score for the opposing team to chase within a set number of overs, which varies based on the format. Cricket is played in three major formats: Test matches (lasting five days), One Day Internationals (50 overs), and Twenty20 (20 overs). An over includes six balls. 

In India, the Indian Premier League (IPL) is immensely popular and well-known internationally. It follows the Twenty20 format and features two teams of eleven players each, along with four to five substitutes.

With the introduction of the Impact Player rule last year(2023), teams can now list four/five substitutes at the toss and use any one of them as their Impact Player, adding a new tactical and strategic dimension to the game.


### Quick Start

To See just the report, Clone this repository using below command

` git clone https://github.com/damletanmay/Impact-player-analysis.git`

Then, open `Impact Player Analysis.pbix` to see the report

## Why this Project ?
The insights and visualizations generated from this project aim to provide valuable support to coaches, enhancing their decision-making processes in the selection of Impact Player.


## Project Setup for potential contributors

0. Install PostgreSQL, PowerBI and Python
1. Create a virutal environment `virutalenv env`
2. Activate virtual environment `env\Scripts\activate` for windows and `env/bin/activate` for linux/MAC.
3. `pip install -r requirements.txt`
4. Make a database.ini file with credentials for PostgreSQL as formatted in [sample_database.ini](https://github.com/damletanmay/Impact-player-analysis/blob/main/sample_database.ini)
5. Run `load_data.py` to load data from /Data/*.csv files to PostgreSQL. 
6. Setup ODBC for PostgreSQL
7. Open `Impact Player Analysis.pbix` and refresh data 

`Impact Player Analysis.pbix` report has lot of relationships build in the model view and measures are well-commented.


## Implementation Details

Below Diagram shows the architecture of techology stack.

![Tech Stack](https://github.com/damletanmay/Impact-player-analysis/blob/main/Images/Project%20Milestone%20Model%20Explanation.png)

Dataset used: [Kaggle](https://www.kaggle.com/datasets/patrickb1912/ipl-complete-dataset-20082020)

Read [Research Paper.docx](https://github.com/damletanmay/Impact-player-analysis/blob/main/Research%20Paper.docx) for more details.

## Contact Us

1. Tanmay Damle - [LinkedIn,](https://www.linkedin.com/in/tanmaydamle1/) [GitHub](https://github.com/damletanmay)

2. Chaitanya Panchal - [LinkedIn,](https://www.linkedin.com/in/chaitanya-panchal-9a43121b7/) [GitHub](https://github.com/Chaitanya-0310)

3. Smit Patel - [GitHub](https://github.com/Smitpatel2801)

4. Shivam Dalsaniya - [LinkedIn,](https://www.linkedin.com/in/shivam-dalsaniya-ab3285190/) [GitHub](https://github.com/shivampatel1001)

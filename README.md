# Airbnb SQL Case Study – NYC 2019

## Project Overview
This project analyzes the **Airbnb NYC 2019 dataset** using **SQL** and **Python (Pandas, Matplotlib, Seaborn)**.  
The goal is to uncover insights into **pricing, host behavior, neighbourhood demand, and availability trends**.  

It demonstrates my skills in:
- SQL (data cleaning, aggregations, business queries)
- Data visualization with Python
- Turning raw data into business insights

---

## Dataset
- Source: [Airbnb NYC 2019 on Kaggle](https://www.kaggle.com/dgomonov/new-york-city-airbnb-open-data)  
- Size: ~48,000 listings  
- Key Columns:
  - `id`: Listing ID  
  - `host_id`, `host_name`  
  - `neighbourhood_group` (borough)  
  - `neighbourhood`  
  - `room_type` (Entire home/Private room/etc.)  
  - `price`  
  - `minimum_nights`  
  - `number_of_reviews`, `reviews_per_month`  
  - `availability_365`  

---

## Case Study Objectives
1. Total number of listings in NYC  
2. Distribution of listings by room type  
3. Average price by neighbourhood group  
4. Top 10 most expensive listings  
5. Top 10 hosts with the most listings  
6. Neighbourhoods with highest average reviews  
7. Average price per room type in each neighbourhood group  
8. % of listings available all year  
9. Detect abnormal minimum nights (fraudulent/unrealistic listings)  
10. Most popular neighbourhoods by total reviews  

---

## Tools & Technologies
- **SQL** (MySQL / SQLite)
- **Python**  
  - Pandas  
  - SQLAlchemy  
  - Matplotlib  
  - Seaborn  
- **Jupyter Notebook**  

---

## Visualizations
Here are some key charts from the analysis:

### Listings by Room Type
![Room Type Distribution](visuals/room_type_distribution.png)

### Average Price by Neighbourhood Group
![Average Price](visuals/avg_price_borough.png)

### Top 10 Hosts by Number of Listings
![Top Hosts](visuals/top_hosts.png)

*(More charts available in the Jupyter Notebook)*

---

## Key Insights
- **Manhattan** has the highest average price among all boroughs.  
- **Entire home/apartment** is the most common room type.  
- Some hosts manage **hundreds of listings** → indicates professional/commercial operators.  
- A portion of listings have **unrealistic minimum nights (>365)** → likely fraudulent or data-entry issues.  
- Neighbourhoods like **Williamsburg & Harlem** show strong demand with high review counts.  

---

## How to Run
1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/airbnb-sql-case-study.git
   cd airbnb-sql-case-study

## Install requirements:

pip install pandas sqlalchemy matplotlib seaborn pymysql


## Run Jupyter Notebook:

jupyter notebook notebook.ipynb
# 🛒 Retail ETL Pipeline Project

## 📌 Project Overview

The objective of this project is to build a simple ETL (Extract, Transform, Load) pipeline by collecting retail/e-commerce data from a website, processing the data using Python and Pandas, and storing the cleaned data into a PostgreSQL database.

The project demonstrates fundamental skills in:

* Web Scraping
* Data Cleaning & Transformation
* Exploratory Data Analysis (EDA)
* PostgreSQL Database Management
* SQL DDL & DML
* Data Pipeline Workflow

---

# 🎯 Objectives

* Extract product data from a retail/e-commerce website using web scraping.
* Transform and clean the collected data using Pandas.
* Store the processed data into PostgreSQL.
* Create a reproducible ETL workflow for retail data.

---

# 🛠️ Technologies Used

| Technology       | Purpose                        |
| ---------------- | ------------------------------ |
| Python           | Main programming language      |
| BeautifulSoup    | Web scraping                   |
| Requests         | Fetch website HTML             |
| Pandas           | Data transformation & analysis |
| PostgreSQL       | Database storage               |
| pgAdmin          | Database management            |
| SQL              | Database queries               |
| Jupyter Notebook | Development environment        |

---

# 📂 Project Structure

```bash
├── Web Scarping Process.ipynb
├── DDL & DML Queries.sql
├── cleaned_data.csv
├── raw_data.csv
├── README.md
```

---

# 🔍 Extract Process

The extraction stage focuses on collecting retail product data from an e-commerce website using web scraping techniques.

### Data Collected

Example collected attributes:

* Product Name
* Price
* Rating
* Category
* Product Link

### Key Activities

* Send HTTP requests to website pages
* Parse HTML content using BeautifulSoup
* Extract structured product information
* Store scraped data into Pandas DataFrame

---

# 🔄 Transform Process

After extracting the data, several transformation and cleaning steps were performed.

### Data Cleaning

* Handling missing values
* Removing unnecessary characters
* Converting numeric columns into appropriate data types
* Standardizing column names

### Exploratory Data Analysis (EDA)

Simple analysis performed:

* Data overview
* Data types checking
* Missing value checking
* Descriptive statistics

### Output

The cleaned dataset is exported into:

```bash
cleaned_data.csv
```

---

# 🗄️ Load Process

The final stage loads the transformed data into PostgreSQL.

### Database Activities

* Create database and tables
* Define appropriate data types
* Insert cleaned CSV data into PostgreSQL
* Validate inserted data

### SQL Components

* DDL (CREATE DATABASE, CREATE TABLE)
* DML (INSERT INTO)

---

# 📊 Sample Dataset Preview

| Product Name | Price  | Rating | Category    |
| ------------ | ------ | ------ | ----------- |
| Product A    | 120000 | 4.5    | Electronics |
| Product B    | 85000  | 4.2    | Fashion     |

---

# 🚀 How to Run the Project

## 1. Clone Repository

```bash
git clone https://github.com/yourusername/your-repository.git
```

## 2. Install Dependencies

```bash
pip install pandas beautifulsoup4 requests sqlalchemy psycopg2
```

## 3. Run Jupyter Notebook

```bash
jupyter notebook
```

## 4. Execute SQL Script

Run the `.sql` file using:

* pgAdmin
* PostgreSQL Query Tool

---

# 📈 Skills Demonstrated

* Data Extraction
* Web Scraping
* Data Cleaning
* Data Transformation
* SQL Query Writing
* PostgreSQL Integration
* ETL Pipeline Development
* Documentation & Project Structuring

---

# 📚 Learning Outcomes

Through this project, I learned:

* How to build a basic ETL workflow
* Best practices for web scraping
* Data preprocessing using Pandas
* Database schema creation
* Importing processed data into PostgreSQL

---

# 🧠 Future Improvements

Possible enhancements for future development:

* Automate ETL pipeline scheduling
* Add data visualization dashboard
* Use APIs instead of scraping
* Deploy pipeline using Docker
* Store data in cloud databases

---

# 👤 Author

**Kenny Palibutan**

Aspiring Data Analyst / Data Engineer passionate about data processing, analytics, and automation.

---

# ⭐ Repository Purpose

This repository is intended for:

* Learning documentation
* Portfolio showcase
* Demonstrating ETL and database fundamentals
* Academic & bootcamp project reference

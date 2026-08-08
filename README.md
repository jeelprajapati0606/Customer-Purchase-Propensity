# 🛒 Customer Purchase Propensity

### Data Cleaning • EDA • Feature Engineering • Preprocessing Pipeline

<p align="center">

![Python](https://img.shields.io/badge/Python-3.x-3776AB?style=for-the-badge\&logo=python\&logoColor=white)
![Pandas](https://img.shields.io/badge/Pandas-Data%20Analysis-150458?style=for-the-badge\&logo=pandas\&logoColor=white)
![NumPy](https://img.shields.io/badge/NumPy-Numerical%20Computing-013243?style=for-the-badge\&logo=numpy\&logoColor=white)
![Scikit Learn](https://img.shields.io/badge/Scikit--Learn-Preprocessing-F7931E?style=for-the-badge\&logo=scikit-learn\&logoColor=white)
![SciPy](https://img.shields.io/badge/SciPy-Statistics-8CAAE6?style=for-the-badge\&logo=scipy\&logoColor=white)
![Jupyter](https://img.shields.io/badge/Jupyter-Notebook-F37626?style=for-the-badge\&logo=jupyter\&logoColor=white)


<p align="center">

<a href="YOUR_DEMO_VIDEO_LINK" target="_blank">
  <img src="https://img.shields.io/badge/🎥%20Demo%20Video-7C3AED?style=for-the-badge">
</a>

<a href="YOUR_JUPYTER_NOTEBOOK_LINK" target="_blank">
  <img src="https://img.shields.io/badge/📓%20Jupyter%20Notebook-F37626?style=for-the-badge&logo=jupyter&logoColor=white">
</a>

<a href="YOUR_CLEAN_CSV_LINK" target="_blank">
  <img src="https://img.shields.io/badge/📊%20Clean%20CSV-2EA44F?style=for-the-badge&logo=databricks&logoColor=white">
</a>

<a href="YOUR_SUMMARY_REPORT_LINK" target="_blank">
  <img src="https://img.shields.io/badge/📄%20Project%20Report-6F42C1?style=for-the-badge&logo=readthedocs&logoColor=white">
</a>

</p>

---


# 📖 Project Overview

**Customer Purchase Propensity** is a data preprocessing and feature engineering project designed to prepare customer purchase data for a future **Machine Learning classification task**.

The project focuses on transforming raw, multi-source customer data into a clean and machine-learning-ready dataset.

The workflow covers:

* Data collection
* Data integration
* Data understanding
* Exploratory Data Analysis
* Missing value treatment
* Outlier detection
* Date-time processing
* Categorical encoding
* Numerical scaling
* Feature construction
* Mathematical transformations
* Binning
* Binarization
* Automated preprocessing using `Pipeline` and `ColumnTransformer`
* Final dataset export

> **Note:** This project focuses primarily on **data cleaning, preprocessing, EDA, and feature engineering**. A machine-learning model is not trained in the current notebook.

---

# 🎯 Problem Statement

E-commerce businesses collect customer information from multiple sources such as:

* Customer databases
* Transaction systems
* Product databases
* External APIs

Raw data is usually not directly suitable for Machine Learning because it may contain:

* Missing values
* Outliers
* Categorical variables
* Different numerical scales
* Date variables
* Skewed distributions
* Multiple data sources requiring integration

The goal of this project is to build a structured preprocessing workflow that converts this raw information into a more useful dataset for future predictive modeling.

---

# 💡 Project Objective

### Main Objective

> **Clean, preprocess and engineer customer purchase data so that it can be used for a future Machine Learning classification problem.**

### Future ML Problem

The notebook frames the problem as:

**Binary Classification**

```text
Input Features
       ↓
Customer Information
Purchase History
Transaction Information
Product Information
       ↓
Machine Learning Model
       ↓
Purchased
  0 / 1
```

Where:

```text
1 → Customer purchases
0 → Customer does not purchase
```

However, the current notebook does **not** train or evaluate a classifier.

---

# 🗂️ Data Sources

The project demonstrates working with multiple data formats.

| Source           | Format | Purpose                          |
| ---------------- | ------ | -------------------------------- |
| Customer Data    | CSV    | Customer demographic information |
| Transaction Data | JSON   | Customer transaction history     |
| Product Data     | SQL    | Product information              |
| External Data    | API    | Additional user information      |

### Customer CSV

Contains customer-level information such as:

```text
customer_id
name
age
gender
city
income
signup_date
last_purchase_date
```

### Transaction JSON

Contains transaction-level information such as:

```text
transaction_id
customer_id
product_id
amount
payment_mode
date
```

### Product SQL

Contains product information such as:

```text
product_id
product_name
category
price
stock
```

### API Data

The notebook demonstrates fetching external user data using:

```text
https://dummyjson.com/users
```

---

# 🏗️ Project Architecture

```text
                    ┌─────────────────┐
                    │  Customer CSV   │
                    └────────┬────────┘
                             │
                             ▼
                    ┌─────────────────┐
                    │ Transaction JSON│
                    └────────┬────────┘
                             │
                             ▼
                    ┌─────────────────┐
                    │   Product SQL   │
                    └────────┬────────┘
                             │
                             ▼
                    ┌─────────────────┐
                    │    API Data     │
                    └────────┬────────┘
                             │
                             ▼
                  ┌──────────────────────┐
                  │   Data Integration   │
                  │ customer_id/product_id│
                  └──────────┬───────────┘
                             │
                             ▼
                  ┌──────────────────────┐
                  │       EDA            │
                  └──────────┬───────────┘
                             │
                             ▼
                  ┌──────────────────────┐
                  │ Missing Value Handling│
                  └──────────┬───────────┘
                             │
                             ▼
                  ┌──────────────────────┐
                  │ Outlier Handling     │
                  └──────────┬───────────┘
                             │
                             ▼
                  ┌──────────────────────┐
                  │ Feature Engineering  │
                  └──────────┬───────────┘
                             │
                             ▼
                  ┌──────────────────────┐
                  │ Encoding & Scaling   │
                  └──────────┬───────────┘
                             │
                             ▼
                  ┌──────────────────────┐
                  │ Transformations      │
                  └──────────┬───────────┘
                             │
                             ▼
                  ┌──────────────────────┐
                  │ Preprocessing Pipeline│
                  └──────────┬───────────┘
                             │
                             ▼
                ┌──────────────────────────┐
                │ processed_customer_data  │
                │          .csv            │
                └──────────────────────────┘
```

---

# ⚙️ Complete Workflow

```text
1. Problem Framing
        ↓
2. Import Libraries
        ↓
3. Load CSV / JSON / SQL / API
        ↓
4. Understand Data
        ↓
5. Merge Datasets
        ↓
6. Exploratory Data Analysis
        ↓
7. Handle Missing Values
        ↓
8. Detect & Handle Outliers
        ↓
9. Date-Time Processing
        ↓
10. Encode Categorical Variables
        ↓
11. Scale Numerical Variables
        ↓
12. Construct New Features
        ↓
13. Apply Transformations
        ↓
14. Build ColumnTransformer Pipeline
        ↓
15. Export Processed Dataset
```

---

# 📦 Libraries Used

The notebook imports the following major libraries:

```python
import pandas as pd
import numpy as np

import matplotlib.pyplot as plt
import seaborn as sns

from sklearn.preprocessing import (
    LabelEncoder,
    OneHotEncoder,
    OrdinalEncoder,
    StandardScaler,
    MinMaxScaler,
    MaxAbsScaler,
    RobustScaler,
    PowerTransformer,
    FunctionTransformer,
    KBinsDiscretizer
)

from sklearn.impute import (
    SimpleImputer,
    KNNImputer
)

from sklearn.experimental import enable_iterative_imputer
from sklearn.impute import IterativeImputer

from sklearn.compose import ColumnTransformer
from sklearn.pipeline import Pipeline

from scipy import stats
```

### Why these libraries?

| Library      | Purpose                                      |
| ------------ | -------------------------------------------- |
| Pandas       | Data loading, cleaning and manipulation      |
| NumPy        | Numerical operations                         |
| Matplotlib   | Data visualization                           |
| Seaborn      | Statistical visualization                    |
| Scikit-learn | Preprocessing and feature engineering        |
| SciPy        | Statistical calculations and transformations |

---

# 1️⃣ Project Planning & Problem Framing

The notebook begins by understanding the complete Data Science workflow.

### Data Analysis

Data Analysis involves:

```text
Collect
  ↓
Clean
  ↓
Explore
  ↓
Analyze
  ↓
Visualize
  ↓
Interpret
```

The project specifically focuses on the preprocessing stages required before Machine Learning.

### ML Problem Framing

The dataset can potentially be used for predicting:

```text
Will the customer purchase?

YES → 1
NO  → 0
```

This represents a **Binary Classification** problem.

---

# 2️⃣ Data Import & Understanding

## Loading Customer CSV

```python
customers = pd.read_csv("customers.csv")

customers.head()
```

### What this does

* Reads the CSV file.
* Converts it into a Pandas DataFrame.
* `head()` displays the first five records.

---

## Loading Transaction JSON

```python
transaction = pd.read_json("transactions(1).json")

transaction.head()
```

### What this does

Reads transaction information stored in JSON format and converts it into a DataFrame.

---

## Loading Product SQL

```python
import sqlite3

conn = sqlite3.connect("products.db")

with open("products(1).sql", "r") as file:
    sql_script = file.read()

conn.executescript(sql_script)

products = pd.read_sql(
    "SELECT * FROM products",
    conn
)

print(products.head())
```

### Step-by-step

```text
SQLite Connection
       ↓
Read SQL Script
       ↓
Execute SQL Commands
       ↓
Create products table
       ↓
SELECT * FROM products
       ↓
Convert result into DataFrame
```

This demonstrates how SQL data can be integrated into a Python data-processing workflow.

---

## Loading API Data

```python
import requests

url = "https://dummyjson.com/users"

response = requests.get(url)

api_data = response.json()

users_api = pd.json_normalize(
    api_data["users"]
)

print(users_api.head())
print(users_api.info())
```

### What happens here?

1. `requests.get()` sends an HTTP request.
2. `response.json()` converts the API response into Python data.
3. `pd.json_normalize()` converts nested JSON into tabular format.

### Data Integration Concept

```text
CSV
JSON
SQL
API
 ↓
Python
 ↓
Pandas DataFrames
```

---

# 3️⃣ Data Merging

The main datasets are connected using:

```text
customer_id
product_id
```

## Standardizing IDs

```python
customers["customer_id"] = (
    customers["customer_id"]
    .astype(str)
    .str.strip()
)
```

The same cleaning is applied to transaction and product IDs.

### Why?

Because:

```text
"C001"
"C001 "
1
```

may be interpreted differently during merging.

Standardizing the keys reduces unnecessary merge mismatches.

---

## Merge Transactions with Customers

```python
df = transaction.merge(
    customers,
    on="customer_id",
    how="left"
)
```

### Meaning

A **left join** keeps all transaction records and attaches matching customer information.

---

## Merge Products

```python
df = df.merge(
    products,
    on="product_id",
    how="left"
)
```

Now the final DataFrame combines:

```text
Transaction Information
        +
Customer Information
        +
Product Information
```

---

## Data Inspection

```python
df.info()
```

Used to understand:

* Number of rows
* Number of columns
* Data types
* Non-null values
* Memory usage

### Statistical Summary

```python
df.describe()
```

Provides statistics such as:

```text
count
mean
std
min
25%
50%
75%
max
```

---

# 4️⃣ Exploratory Data Analysis

EDA helps understand the structure, distribution and relationships within the data.

---

## 4.1 Univariate Analysis

### Identify Numerical Columns

```python
numeric_cols = df.select_dtypes(
    include=np.number
).columns
```

This automatically identifies numerical columns.

---

## Histograms

```python
df[numeric_cols].hist(
    figsize=(15, 10),
    bins=20
)

plt.tight_layout()
plt.show()
```

### Purpose

Histograms help identify:

* Distribution
* Skewness
* Spread
* Possible outliers
* Concentration of values

---

## Skewness

```python
skewness = df[numeric_cols].skew()

print(skewness)
```

Skewness measures how asymmetric a distribution is.

The notebook also identifies highly skewed variables:

```python
for col in numeric_cols:
    value = df[col].skew()

    if abs(value) > 1:
        print(
            col,
            "is highly skewed:",
            value
        )
```

---

# 📊 Pandas Profiling

```python
from ydata_profiling import ProfileReport

profile = ProfileReport(
    df,
    title="Customer Purchase Profiling Report",
    explorative=True
)

profile.to_file(
    "customer_profile.html"
)
```

This generates an HTML profiling report containing automated information about the dataset.

It can help inspect:

* Variables
* Missing values
* Distributions
* Correlations
* Duplicate information
* Data types

---

# 4.2 Bivariate Analysis

## Creating Purchase Target

The notebook creates:

```python
df["purchased"] = 1
```

This creates a `purchased` column for demonstration of target-based analysis.

```python
print(
    df["purchased"].value_counts()
)
```

### Important

In the current notebook, this assignment makes every row:

```text
purchased = 1
```

Therefore, this is **not yet a valid predictive target** for model training. A real classification project would need both:

```text
purchased = 0
purchased = 1
```

---

## Correlation Analysis

```python
correlation = df.corr(
    numeric_only=True
)

print(
    correlation["purchased"].sort_values()
)
```

Correlation is used to inspect relationships between numerical variables.

---

## Correlation Heatmap

```python
plt.figure(figsize=(10, 7))

sns.heatmap(
    correlation,
    annot=True,
    cmap="coolwarm"
)

plt.title(
    "Correlation Heatmap"
)

plt.show()
```

The heatmap provides a visual representation of numerical correlations.

---

## Income vs Purchase

```python
sns.boxplot(
    x="purchased",
    y="income",
    data=df
)

plt.title(
    "Income vs Purchase"
)

plt.show()
```

The boxplot compares the distribution of income across purchase categories.

---

## Grouped Mean

```python
df.groupby(
    "purchased"
)["income"].mean()
```

This calculates average income for each purchase category.

---

# 4.3 Multivariate Analysis

## Pairplot

```python
selected_cols = [
    "age",
    "income",
    "purchased"
]

sns.pairplot(
    df[selected_cols],
    hue="purchased"
)

plt.show()
```

Pairplots help inspect multiple variable relationships simultaneously.

---

## Grouped Statistics

```python
df.groupby(
    "purchased"
)[
    ["age", "income"]
].mean()
```

This calculates group-wise averages.

---

# 5️⃣ Missing Value Handling

First, missing values are identified:

```python
print(
    df.isnull().sum()
)
```

The project demonstrates several techniques.

---

## 5.1 Simple Imputer — Numerical

```python
num_cols = df.select_dtypes(
    include=np.number
).columns

num_imputer = SimpleImputer(
    strategy="mean"
)

df[num_cols] = (
    num_imputer.fit_transform(
        df[num_cols]
    )
)
```

### Strategy

```text
Missing numerical value
        ↓
Mean of column
        ↓
Replace missing value
```

---

## 5.2 Simple Imputer — Categorical

```python
cat_cols = df.select_dtypes(
    exclude=np.number
).columns

cat_imputer = SimpleImputer(
    strategy="most_frequent"
)

df[cat_cols] = (
    cat_imputer.fit_transform(
        df[cat_cols]
    )
)
```

### Strategy

Missing categorical values are replaced with the most frequently occurring category.

---

## 5.3 Most Frequent Imputation

```python
imputer = SimpleImputer(
    strategy="most_frequent"
)

df[cat_cols] = (
    imputer.fit_transform(
        df[cat_cols]
    )
)
```

This is particularly useful for categorical variables.

---

# 5.4 Missing Indicator + Random Sample Imputation

First, a missing-value indicator is created:

```python
df["income_missing"] = (
    df["income"]
    .isnull()
    .astype(int)
)
```

Meaning:

```text
0 → Income was available
1 → Income was missing
```

### Random Sample Imputation

```python
def random_sample_imputation(
    data,
    column
):
    
    data = data.copy()
    
    missing = data[column].isnull()
    
    random_values = (
        data.loc[
            ~missing,
            column
        ]
        .sample(
            n=missing.sum(),
            replace=True,
            random_state=42
        )
        .values
    )
    
    data.loc[
        missing,
        column
    ] = random_values
    
    return data
```

Then:

```python
df = random_sample_imputation(
    df,
    "income"
)
```

### Concept

Instead of always using mean or median, values are randomly sampled from existing non-missing values.

---

# 5.5 KNN Imputer

```python
knn_imputer = KNNImputer(
    n_neighbors=5
)

df[num_cols] = (
    knn_imputer.fit_transform(
        df[num_cols]
    )
)
```

KNN imputation estimates missing values using similar observations.

```text
Missing Customer
      ↓
Find similar customers
      ↓
Use nearby values
      ↓
Estimate missing value
```

---

# 5.6 MICE / Iterative Imputation

```python
mice = IterativeImputer(
    max_iter=10,
    random_state=42
)

df[num_cols] = (
    mice.fit_transform(
        df[num_cols]
    )
)
```

Iterative imputation estimates missing values using relationships between features.

---

# 5.7 Complete Case Analysis

```python
df_complete = df.dropna()

print(
    "Original shape:",
    df.shape
)

print(
    "After dropping missing rows:",
    df_complete.shape
)
```

This simply removes rows containing missing values.

---

# 6️⃣ Outlier Detection & Handling

The notebook demonstrates multiple approaches.

---

## 6.1 Z-Score Method

```python
z_scores = np.abs(
    stats.zscore(df["income"])
)

outliers = df[
    z_scores > 3
]

print(
    "Number of outliers:",
    len(outliers)
)
```

### Rule

```text
|Z| > 3
     ↓
Potential outlier
```

Outliers can then be removed:

```python
df_zscore = df[
    z_scores <= 3
].copy()
```

---

# 6.2 IQR Method

Calculate Q1 and Q3:

```python
Q1 = df["income"].quantile(0.25)
Q3 = df["income"].quantile(0.75)

IQR = Q3 - Q1
```

Calculate boundaries:

```python
lower = Q1 - 1.5 * IQR
upper = Q3 + 1.5 * IQR
```

Detect outliers:

```python
outliers_iqr = df[
    (df["income"] < lower) |
    (df["income"] > upper)
]
```

Keep non-outliers:

```python
df_iqr = df[
    (df["income"] >= lower) &
    (df["income"] <= upper)
].copy()
```

---

# 6.3 Percentile Method

```python
lower = df["income"].quantile(0.01)
upper = df["income"].quantile(0.99)

df_percentile = df[
    (df["income"] >= lower) &
    (df["income"] <= upper)
].copy()
```

This removes observations outside the 1st and 99th percentiles.

---

# 6.4 Winsorization

```python
from scipy.stats.mstats import winsorize

df["income_winsorized"] = winsorize(
    df["income"],
    limits=[0.01, 0.01]
)
```

Instead of deleting extreme values, Winsorization limits them to boundary values.

---

# 7️⃣ Date & Time Feature Engineering

## Convert Dates

```python
df["signup_date"] = pd.to_datetime(
    df["signup_date"],
    errors="coerce"
)

df["last_purchase_date"] = pd.to_datetime(
    df["last_purchase_date"],
    errors="coerce"
)
```

### Why?

Date strings need to be converted into actual datetime objects before date calculations can be performed.

---

# Days Since Last Purchase

```python
today = pd.Timestamp.today()

df["days_since_last_purchase"] = (
    today -
    df["last_purchase_date"]
).dt.days
```

### Meaning

This feature represents approximately how many days have passed since the customer's last purchase.

---

# Customer Number Extraction

Customer IDs may look like:

```text
C001
C025
C100
```

The numeric part is extracted:

```python
df["customer_number"] = (
    df["customer_id"]
    .astype(str)
    .str.extract(r"(\d+)")[0]
    .astype(float)
)
```

Example:

```text
C001 → 1
C025 → 25
C100 → 100
```

---

# 8️⃣ Categorical Encoding

Machine Learning algorithms generally require numerical representations of categorical variables.

The project demonstrates three encoding approaches.

---

# 8.1 Label Encoding

```python
le = LabelEncoder()

df["gender_encoded"] = (
    le.fit_transform(
        df["gender"].astype(str)
    )
)
```

Example:

```text
Male   → 1
Female → 0
```

The exact numeric mapping is determined by the encoder.

---

# 8.2 One-Hot Encoding

```python
df_encoded = pd.get_dummies(
    df,
    columns=[
        "gender",
        "city"
    ],
    drop_first=True
)
```

Example:

```text
city
Ahmedabad
Mumbai
Delhi
```

can become separate binary columns.

```text
city_Mumbai
city_Delhi
```

---

# 8.3 Ordinal Encoding

The notebook creates an example education feature:

```python
df["education"] = np.random.choice(
    [
        "High School",
        "Graduate",
        "Postgraduate"
    ],
    size=len(df)
)
```

Then applies ordered encoding:

```python
ordinal = OrdinalEncoder(
    categories=[
        [
            "High School",
            "Graduate",
            "Postgraduate"
        ]
    ]
)

df["education_encoded"] = (
    ordinal.fit_transform(
        df[["education"]]
    )
)
```

The intended order is:

```text
High School
     ↓
Graduate
     ↓
Postgraduate
```

---

# 8.4 Income Binning

```python
df["income_group"] = pd.cut(
    df["income"],
    bins=3,
    labels=[
        "Low",
        "Medium",
        "High"
    ]
)
```

This converts continuous income into categories.

---

# 9️⃣ Feature Scaling

Different numerical variables may have very different ranges.

For example:

```text
Age       → 18–70
Income    → 10,000–100,000
Purchases → 1–20
```

Scaling brings numerical features into comparable ranges.

---

# 9.1 StandardScaler

```python
scaler = StandardScaler()

df["income_standard"] = (
    scaler.fit_transform(
        df[["income"]]
    )
)
```

StandardScaler transforms values based on mean and standard deviation.

---

# 9.2 MinMaxScaler

```python
scaler = MinMaxScaler()

df["income_minmax"] = (
    scaler.fit_transform(
        df[["income"]]
    )
)
```

MinMaxScaler maps values to a bounded range, commonly:

```text
0 → minimum
1 → maximum
```

---

# 9.3 MaxAbsScaler

```python
scaler = MaxAbsScaler()

df["income_maxabs"] = (
    scaler.fit_transform(
        df[["income"]]
    )
)
```

Scaling is based on the maximum absolute value.

---

# 9.4 RobustScaler

```python
scaler = RobustScaler()

df["income_robust"] = (
    scaler.fit_transform(
        df[["income"]]
    )
)
```

RobustScaler uses statistics that are less sensitive to extreme values.

---

# 9.5 ColumnTransformer

The notebook also demonstrates applying different preprocessing methods to different feature types.

```python
numeric_features = [
    "age",
    "income",
    "days_since_last_purchase"
]

categorical_features = [
    "gender",
    "city"
]
```

Then:

```python
preprocessor = ColumnTransformer(
    transformers=[
        (
            "num",
            StandardScaler(),
            numeric_features
        ),
        (
            "cat",
            OneHotEncoder(
                handle_unknown="ignore"
            ),
            categorical_features
        )
    ]
)
```

### Concept

```text
Numerical Features
       ↓
StandardScaler

Categorical Features
       ↓
OneHotEncoder

       ↓
Combined Output
```

---

# 🔟 Feature Construction & Transformation

Feature engineering creates additional variables that may contain useful customer behavior information.

---

# Total Purchases

```python
purchase_count = (
    df.groupby("customer_id")
      .size()
      .reset_index(
          name="total_purchases"
      )
)
```

This counts the number of transaction records for each customer.

Then:

```python
df = df.merge(
    purchase_count,
    on="customer_id",
    how="left"
)
```

---

# Days Since Signup

```python
df["days_since_signup"] = (
    pd.Timestamp.today()
    -
    df["signup_date"]
).dt.days
```

This estimates how long the customer has been registered.

---

# Purchase Per Day

```python
df["purchase_per_day"] = (
    df["total_purchases"] /
    df["days_since_signup"]
    .replace(0, 1)
)
```

### Formula

```text
Purchase Per Day
=
Total Purchases / Days Since Signup
```

This creates a customer purchase-frequency indicator.

---

# Log Transformation

```python
log_transformer = FunctionTransformer(
    np.log1p
)

df["income_log"] = (
    log_transformer.fit_transform(
        df[["income"]]
    )
)
```

Log transformation can reduce the effect of strong right-skewness.

`log1p(x)` calculates:

```text
log(1 + x)
```

---

# Square Root Transformation

```python
sqrt_transformer = FunctionTransformer(
    np.sqrt
)

df["income_sqrt"] = (
    sqrt_transformer.fit_transform(
        df[["income"]]
    )
)
```

Square root transformation is another method for reducing skewness.

---

# Reciprocal Transformation

```python
df["income_reciprocal"] = (
    1 /
    df["income"]
    .replace(0, np.nan)
)
```

Formula:

```text
1 / income
```

The replacement of zero with `NaN` avoids division by zero.

---

# Box-Cox Transformation

```python
positive_income = (
    df[["income"]]
    .clip(lower=0.01)
)

pt_boxcox = PowerTransformer(
    method="box-cox"
)

df["income_boxcox"] = (
    pt_boxcox.fit_transform(
        positive_income
    )
)
```

Box-Cox requires positive values, so the notebook clips income to a minimum positive value.

---

# Yeo-Johnson Transformation

```python
pt_yeo = PowerTransformer(
    method="yeo-johnson"
)

df["income_yeojohnson"] = (
    pt_yeo.fit_transform(
        df[["income"]]
    )
)
```

Yeo-Johnson is another power transformation demonstrated in the project.

---

# Equal Width Binning

```python
df["income_equal_width"] = pd.cut(
    df["income"],
    bins=4,
    labels=[
        "Group 1",
        "Group 2",
        "Group 3",
        "Group 4"
    ]
)
```

The income range is divided into four equal-width intervals.

---

# Quantile Binning

```python
df["income_quantile"] = pd.qcut(
    df["income"],
    q=4,
    labels=[
        "Low",
        "Medium",
        "High",
        "Very High"
    ],
    duplicates="drop"
)
```

Quantile binning attempts to divide observations into four groups based on their distribution.

---

# Purchase Frequency

```python
df["purchase_frequency"] = (
    df["total_purchases"]
)
```

This creates a customer purchase-frequency feature.

---

# Frequent Buyer

A threshold is defined:

```python
threshold = 5
```

Then:

```python
df["frequent_buyer"] = (
    df["purchase_frequency"] >
    threshold
).astype(int)
```

Meaning:

```text
Purchase Frequency > 5
        ↓
frequent_buyer = 1

Otherwise
        ↓
frequent_buyer = 0
```

---

# 🔄 Complete Preprocessing Pipeline

The project combines preprocessing operations using:

* `Pipeline`
* `ColumnTransformer`
* `SimpleImputer`
* `StandardScaler`
* `OneHotEncoder`

---

## Numerical Features

```python
numeric_features = [
    "age",
    "income",
    "total_purchases",
    "days_since_last_purchase",
    "purchase_per_day"
]
```

## Categorical Features

```python
categorical_features = [
    "gender",
    "city"
]
```

---

## Numerical Pipeline

```python
numeric_pipeline = Pipeline(
    steps=[
        (
            "imputer",
            SimpleImputer(
                strategy="median"
            )
        ),
        (
            "scaler",
            StandardScaler()
        )
    ]
)
```

### Workflow

```text
Numerical Data
      ↓
Median Imputation
      ↓
Standard Scaling
```

---

## Categorical Pipeline

```python
categorical_pipeline = Pipeline(
    steps=[
        (
            "imputer",
            SimpleImputer(
                strategy="most_frequent"
            )
        ),
        (
            "encoder",
            OneHotEncoder(
                handle_unknown="ignore"
            )
        )
    ]
)
```

### Workflow

```text
Categorical Data
      ↓
Most Frequent Imputation
      ↓
One-Hot Encoding
```

---

## ColumnTransformer

```python
preprocessor = ColumnTransformer(
    transformers=[
        (
            "numeric",
            numeric_pipeline,
            numeric_features
        ),
        (
            "categorical",
            categorical_pipeline,
            categorical_features
        )
    ]
)
```

This allows different preprocessing workflows to be applied to different columns.

---

## Apply Pipeline

```python
X = df[
    numeric_features +
    categorical_features
]

X_processed = (
    preprocessor.fit_transform(X)
)

print(
    "Processed feature shape:",
    X_processed.shape
)
```

### Final preprocessing architecture

```text
                  RAW FEATURES
                       │
            ┌──────────┴──────────┐
            │                     │
       NUMERICAL              CATEGORICAL
            │                     │
            ▼                     ▼
     Median Imputer       Most Frequent Imputer
            │                     │
            ▼                     ▼
     StandardScaler        OneHotEncoder
            │                     │
            └──────────┬──────────┘
                       ▼
                PROCESSED DATA
```

---

# 📤 Final Output

The processed dataset is exported using:

```python
df.to_csv(
    "processed_customer_data.csv",
    index=False
)
```

Confirmation:

```python
print(
    "processed_customer_data.csv "
    "created successfully!"
)
```

Final inspection:

```python
print(df.head())
print(df.shape)
```

### Output

```text
processed_customer_data.csv
```

This file contains the engineered and processed customer dataset.

---

# 📊 Key Observations

The project identified several preprocessing requirements:

### 1. Missing Values

The raw data contained missing values that required treatment.

### 2. Outliers

Income and other numerical variables could contain extreme observations, so multiple detection methods were demonstrated.

### 3. Categorical Variables

Variables such as:

```text
gender
city
```

required encoding.

### 4. Different Numerical Scales

Numerical variables can have very different ranges, making scaling useful for future Machine Learning.

### 5. Date Variables

Date columns were converted into datetime format and used to construct behavioral features.

### 6. Feature Engineering

New customer behavior features were created, including:

```text
days_since_last_purchase
days_since_signup
total_purchases
purchase_per_day
purchase_frequency
frequent_buyer
```

---

# 🧠 Techniques Used

| Category             | Techniques                                         |
| -------------------- | -------------------------------------------------- |
| Data Loading         | CSV, JSON, SQL, API                                |
| Data Integration     | Merge / Join                                       |
| Data Understanding   | `info()`, `describe()`                             |
| EDA                  | Histogram, Boxplot, Pairplot, Heatmap              |
| Profiling            | YData Profiling                                    |
| Missing Values       | Mean, Most Frequent, Random Sample, KNN, Iterative |
| Outliers             | Z-Score, IQR, Percentile                           |
| Outlier Treatment    | Filtering, Winsorization                           |
| Date Engineering     | Datetime conversion                                |
| Encoding             | Label, One-Hot, Ordinal                            |
| Binning              | Equal Width, Quantile                              |
| Scaling              | Standard, MinMax, MaxAbs, Robust                   |
| Transformation       | Log, Square Root, Reciprocal                       |
| Power Transformation | Box-Cox, Yeo-Johnson                               |
| Feature Engineering  | Purchase count, purchase/day, frequent buyer       |
| Pipeline             | Pipeline + ColumnTransformer                       |
| Output               | CSV                                                |

---


# 👨‍💻 Author

### Jeel Prajapati



# 📊 AI-Powered Vendor Performance Analytics Assistant (Text-to-SQL)

## 🚀 Overview
The AI-Powered Vendor Performance Analytics Assistant is a Text-to-SQL system that allows users to query vendor and supply chain data using natural language.

It leverages Large Language Models (LLMs) to convert user queries into SQL and retrieve insights from a MySQL database, eliminating the need for manual SQL writing and enabling faster business decision-making.

---

## 🎯 Key Features

- 🔍 Natural Language to SQL conversion  
- 🧠 Schema-aware prompt engineering  
- 🔗 Multi-table joins, aggregations, and filtering  
- ⚡ Fast query execution (<10 seconds)  
- 📈 Vendor performance insights:
  - Delivery delay analysis  
  - On-time delivery rate  
  - Vendor ranking  
  - Order volume and fulfillment metrics  

---

## 🏗️ Architecture
User Query (Natural Language)
        ↓
Prompt Engineering (LangChain)
        ↓
OpenAI LLM (SQL Generation)
        ↓
SQL Query Execution (MySQL)
        ↓
Results Display (Pandas)



---

## 🛠️ Tech Stack

- **Language:** Python  
- **LLM Framework:** LangChain  
- **LLM API:** OpenAI  
- **Database:** MySQL  
- **ORM/Connector:** SQLAlchemy, PyMySQL  
- **Data Processing:** Pandas  
- **Environment:** Jupyter Notebook  

---

## 🗄️ Database Schema

The project uses a relational database with 5 tables:

- `vendors` – vendor details  
- `orders` – order information  
- `deliveries` – delivery performance data  
- `products` – product catalog  
- `order_items` – order-product mapping  

---



---

# 🎼 MusicDB: Physical Store Management System

A relational database backend designed to manage a physical music store's inventory, customer base, and sales transactions. This project utilizes **MariaDB/MySQL** to ensure data integrity through foreign key constraints and normalized table structures.

## 🗄️ Database Architecture

The database, named `musicdb`, consists of 7 core tables designed to track the lifecycle of a music sale:

| Table | Purpose |
| --- | --- |
| **`artists`** | Stores artist names and their country of origin. |
| **`genres`** | Categorizes music into styles like Rock, Pop, Jazz, and Hip-Hop. |
| **`albums`** | The central inventory hub, linking artists, genres, pricing, and stock. |
| **`customers`** | Managed profiles including contact details and registration timestamps. |
| **`sales`** | Top-level transaction records tracking the date and total amount. |
| **`saleitems`** | Junction table for many-to-many relationships between sales and albums. |
| **`stock`** | Logs stock additions and history for inventory management. |

---

## 🛠️ Key Features

* **Relational Integrity:** Uses `FOREIGN KEY` constraints to ensure that albums must belong to valid artists and sales must link to existing customers.
* **Auto-Incrementing IDs:** Primary keys are set to auto-increment for seamless data entry.
* **Precise Financials:** Uses `DECIMAL(10,2)` for prices and total amounts to ensure mathematical accuracy in transactions.
* **Timestamping:** Automatically tracks when a customer was created and when sales occurred.



## ⚙️ Technical Environment

* **Server Version:** 10.4.32-MariaDB.
* **Default Character Set:** `utf8mb4`.
* **Engine:** InnoDB (Supports ACID transactions).

---

Would you like me to create a **Python script** or **Node.js** file that connects to this specific database to perform a basic sale?

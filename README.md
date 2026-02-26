🎼 MusicDB – Physical Music Store Management System

My system is a relational database built using MariaDB (compatible with MySQL).

It is designed to manage a physical music store, handling:

Artists

Albums

Inventory

Customers

Sales transactions

Stock monitoring

Revenue summaries

The database name is griselda_musicdb.

🗄️ 1. Database Structure Overview

The system contains 7 main tables, each responsible for a specific part of the business process.

🎤 1. artists Table

Stores information about music artists.

Fields:

ArtistID (Primary Key)

Name

Country

🔹 Purpose: Ensures every album is linked to a valid artist.

💿 2. albums Table

Stores album details.

Fields:

AlbumID (Primary Key)

ArtistID (Foreign Key)

Title

ReleaseYear

Label

🔹 Relationship:

Each album belongs to one artist.

Connected through a Foreign Key constraint.

This enforces referential integrity, meaning:

You cannot insert an album without a valid artist.

📦 3. inventory Table

This tracks physical stock of albums.

Fields:

SKU (Primary Key)

AlbumID (Foreign Key)

Format (Vinyl, CD, Cassette, Box Set)

Condition_Status

Price

StockQuantity

Weight_Grams

🔹 Purpose:

Tracks different physical formats.

Stores price and quantity available.

Allows multiple versions of the same album.

👥 4. customers Table

Stores customer details.

Fields:

CustomerID (Primary Key)

FirstName

LastName

Email (Unique)

ShippingAddress

🔹 The email field is UNIQUE to prevent duplicate accounts.

💰 5. sales Table

Records every sale transaction.

Fields:

SaleID (Primary Key)

CustomerID (Foreign Key)

SKU (Foreign Key)

SaleDate

QuantitySold

TotalAmount

🔹 Each sale:

Must belong to an existing customer

Must reference an existing product (SKU)

📊 6. daily_sales_summary Table

Stores daily performance data.

Fields:

SummaryDate (Primary Key)

TotalRevenue

TotalItemsSold

🔹 Purpose:

Business reporting

Daily revenue tracking

Performance analysis

🚨 7. stock_alerts Table

Used to log low-stock warnings.

Fields:

SKU

AlbumTitle

CurrentStock

AlertDate

🔹 Helps management know when inventory is running low.

🔗 Relationships in the System

This is how everything connects:

Artists → Albums → Inventory → Sales → Customers

One Artist → Many Albums

One Album → Many Inventory records (formats)

One Inventory item → Many Sales

One Customer → Many Sales

This structure follows Normalization principles, which:

Reduce redundancy

Improve data consistency

Prevent update anomalies

⚙️ Advanced Features (Triggers)

Your system uses 3 database triggers, which automate business logic.

🔢 1. trg_calculate_total (BEFORE INSERT on sales)

Automatically calculates:

TotalAmount = Price × QuantitySold

✔ Prevents manual calculation errors
✔ Ensures financial accuracy

📉 2. trg_reduce_stock (AFTER INSERT on sales)

Automatically reduces stock after a sale:

StockQuantity = StockQuantity - QuantitySold

✔ Keeps inventory accurate
✔ Prevents overselling

⛔ 3. trg_validate_stock (BEFORE INSERT on sales)

Prevents selling more items than available.

If:

QuantitySold > StockQuantity

It throws:

Insufficient stock for this transaction.

✔ Protects business integrity
✔ Prevents negative stock

🛡️ Data Integrity Features

Your system ensures reliability through:

✅ Primary Keys

Guarantee each record is unique.

✅ Foreign Keys

Maintain relational integrity.

✅ InnoDB Engine

Supports:

ACID transactions

Rollbacks

Crash recovery

✅ DECIMAL(10,2)

Ensures precise financial calculations.

💼 Business Value of the System

This database allows the store to:

Track inventory in real time

Prevent overselling

Automatically calculate revenue

Monitor daily performance

Maintain accurate customer records

Scale as the business grows

🏁 Conclusion (Strong Closing Statement)

This database system is designed with relational integrity, automation through triggers, and transactional safety.
It models real-world physical store operations efficiently while ensuring data accuracy, security, and scalability

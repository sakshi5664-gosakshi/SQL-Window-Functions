# SQL-Window-Functions

Dataset is of "Washington DC capital bikeshare program" February 2022
Dataset Used from: "https://s3.amazonaws.com/capitalbikeshare-data/index.html"

Aggregate functions and Window functions are comparable but unlike aggregate functions, window functions does not cause rows to become grouped into a single output row - the rows have their seperate identities. But above all that, window functions have access to more than just the current row in the query set.

This file contains SQL queries written using Window Functions in below order:
1. SUM, COUNT, and AVG
2. ROW_NUMBER()
3. RANK() and DENSE_RANK()
4. NTILE
5. LAG and LEAD
6. Defining a window alias

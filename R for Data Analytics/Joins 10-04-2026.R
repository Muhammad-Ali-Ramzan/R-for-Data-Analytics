library(dplyr)
library(lubridate)

# Customers Table
customers <- data.frame(
  customer_id = c(101, 102, 103, 104, 105),
  name = c("Ali", "Sara", "Ahmed", "John", "Ayesha"),
  city = c("Lahore", "Karachi", "Islamabad", "Lahore", "Multan")
)

# Orders Table
orders <- data.frame(
  order_id = c(1, 2, 3, 4, 5, 6),
  customer_id = c(101, 102, 103, 101, 106, 102), # 106 = unmatched
  order_date = c("2024-01-01", "2024-01-05", "2024-01-07", "2024-01-10", "2024-01-12", "2024-01-15")
)

# Products Table
products <- data.frame(
  product_id = c(201, 202, 203, 204),
  product_name = c("Laptop", "Phone", "Tablet", "Printer"),
  price = c(1000, 500, 300, 200)
)

# Order Details Table
order_details <- data.frame(
  order_id = c(1, 2, 3, 4, 5, 6),
  product_id = c(201, 202, 203, 201, 204, 205), # 205 unmatched
  quantity = c(1, 2, 1, 3, 2, 1)
)

# Employees Table (for self join)
employees <- data.frame(
  emp_id = c(1, 2, 3, 4),
  emp_name = c("Manager", "Ali", "Sara", "Ahmed"),
  manager_id = c(NA, 1, 1, 2)
)

# 2 INNER JOIN (Matching Records only)
inner_join(customers, orders, by = "customer_id")
# only customers who placed orders

# 3 LEFT JOIN (All from Left Table)
left_join(customers, orders, by = "customer_id")
# All customers, even those without orders

# 4 RIGHT JOIN (All from Right Table)
right_join(customers, orders, by = "customer_id")
# All orders, even unmatched customers (e.g., 106)

# FULL JOIN (All Records)
full_join(customers, orders, by = "customer_id")
# Combines everything (NULLS appear)

# 6 MULTI-TABLE JOIN (Complex Query)
orders %>%
  inner_join(order_details, by = "order_id") %>%
  inner_join(products, by = "product_id") %>%
  inner_join(customers, by = "customer_id")

# Equivalent to oracle:
# SELECT *
# FROM orders o
# JOIN order_details od ON o.order_id = od.order_id
# JOIN products p ON od.product_id = p.product_id
# JOIN customers c ON O.customer_id = c.customer_id;

# SELF JOIN (Employee Hierarchy)
emp_manager <- employees %>%
  left_join(employees, by = c("manager_id" = "emp_id"))

emp_manager
# shows employee manager relationship
-- Create sample fact table
CREATE TABLE fact_sales (
    OrderID INT,
    CustomerName VARCHAR(100),
    ProductID VARCHAR(50),
    SalesAmount DECIMAL(10,2),
    OrderDate DATE
);

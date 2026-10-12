-- ============================================
-- BÀI THỰC HÀNH: TẠO VIEW TRONG MYSQL
-- Database: classicmodels
-- ============================================

USE classicmodels;

-- ============================================
-- PHẦN 1: TẠO VIEW CƠ BẢN
-- ============================================

DROP VIEW IF EXISTS customer_views;

CREATE VIEW customer_views AS
SELECT customerNumber, customerName, phone
FROM customers;

-- Xem dữ liệu từ View
SELECT * FROM customer_views;

-- ============================================
-- PHẦN 2: CẬP NHẬT VIEW
-- ============================================

CREATE OR REPLACE VIEW customer_views AS
SELECT 
    customerNumber, 
    customerName, 
    contactFirstName, 
    contactLastName, 
    phone
FROM customers
WHERE city = 'Nantes';

-- Xem kết quả sau khi cập nhật
SELECT * FROM customer_views;

-- ============================================
-- PHẦN 3: KIỂM TRA DANH SÁCH VIEW
-- ============================================

SHOW FULL TABLES WHERE Table_type = 'VIEW';

SHOW CREATE VIEW customer_views;

-- ============================================
-- PHẦN 4: XÓA VIEW
-- ============================================

DROP VIEW IF EXISTS customer_views;

-- Kiểm tra lại
SHOW FULL TABLES WHERE Table_type = 'VIEW';
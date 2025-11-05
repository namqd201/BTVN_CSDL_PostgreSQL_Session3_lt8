-- 1. Thêm cột genre (varchar) vào bảng Books
ALTER TABLE library.Books
ADD COLUMN genre VARCHAR(100);

-- 2. Đổi tên cột available thành is_available (Cú pháp cho PostgreSQL, MySQL dùng CHANGE COLUMN)
-- MySQL:
-- ALTER TABLE library.Books CHANGE COLUMN available is_available BOOLEAN DEFAULT TRUE;
-- PostgreSQL:
ALTER TABLE library.Books
RENAME COLUMN available TO is_available;

-- 3. Xóa cột email khỏi bảng Members
ALTER TABLE library.Members
DROP COLUMN email;

-- 4. Xóa bảng OrderDetails khỏi schema sales
-- Phải xóa bảng phụ thuộc trước (OrderDetails) trước khi xóa các bảng chính nếu cần.
DROP TABLE sales.OrderDetails;
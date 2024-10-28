INSERT INTO Users  VALUES
(N'Hoai', N'Linh', 'user@gmail.com', 'view/assets/home/img/users/user.jpg','user1', '12345', N'DaNang', '0899884991', 2, 0),
(N'admin', N'', 'admin@gmail.com', 'view/assets/home/img/users/user.jpg', 'admin', '12345', N'Quận 9', '0981347469', 1, 1),
(N'User', N'3', 'user3@gmail.com', 'view/assets/home/img/users/user3.jpg','user3', '12345', N'USA', '06868686868', 2, 1);

INSERT INTO Types VALUES
(N'Áo'),
(N'Quần'),
(N'Phụ kiện');

INSERT INTO Categories VALUES
(N'Áo sơ mi',1),
(N'T-Shirt',1),
(N'Sweatshirt',1),
(N'Áo khoác',1),
(N'Hoodies',1),
(N'Quần short',2),
(N'Quần thun',2),
(N'Quần jean',2),
(N'Áo Polo',1),
(N'Mũ',3),
(N'Balo',3),
(N'Giày',3),
(N'Áo bóng đá',1),
(N'Kính', 3)


INSERT INTO Suppliers VALUES
('Adidas', 'view/assets/home/img/suppliers/1.jpg'),
('Nike', 'view/assets/home/img/suppliers/2.jpg'),
('Louis Vuitton', 'view/assets/home/img/suppliers/3.jpg'),
('Channel', 'view/assets/home/img/suppliers/4.jpg'),
('BoBui', 'view/assets/home/img/suppliers/5.jpg'),
('4MEN', 'view/assets/home/img/suppliers/6.jpg')



INSERT INTO Products VALUES 
(N'Áo 1', 6, 4, 'S,M', 5, N'YonShop 2Hand'
, 'view/assets/home/img/products/1-1.jpg view/assets/home/img/products/1-2.jpg', N'Đen' , '2021-12-01', 0.4, 5, 249.000,1, 1),
(N'Áo 2', 2, 1, 'S,M,L,XXL', 15, N'YonShop 2Hand'
, 'view/assets/home/img/products/2-1.jpg view/assets/home/img/products/2-2.jpg', N'Trắng,Đen,Xám' , '2022-02-01', 0.37, 76, 179.000,1,1),
(N'Quần 1', 6, 8, 'S,M,L', 45, N'YonShop 2Hand'
, 'view/assets/home/img/products/3-1.jpg view/assets/home/img/products/3-2.jpg', N'Xanh dương' , '2023-11-01', 0, 72, 545.000,1,2),
(N'Áo 3', 5, 4, 'S,M,L', 30, N'YonShop 2Hand'
, 'view/assets/home/img/products/5-1.jpg view/assets/home/img/products/5-2.jpg', N'Nâu' , '2019-11-01', 0.17, 21, 315.000,1,1),
(N'Áo 4', 1, 3, 'S,M,L,XL', 10, N'YonShop 2Hand', 'view/assets/home/img/products/6-1.jpg view/assets/home/img/products/6-2.jpg', N'Xám,Trắng' , '2022-11-01', 0.15, 11, 875.000,1,1),
(N'Áo 5', 2, 13, 'M,L', 30, N'YonShop 2Hand', 'view/assets/home/img/products/7-1.jpg view/assets/home/img/products/7-2.jpg', N'Đen' , '2022-11-01', 0., 21, 699.000,1,1),
(N'Quần 2', 3, 7, 'S,M,L,XL', 30, N'YonShop 2Hand', 'view/assets/home/img/products/8-1.jpg view/assets/home/img/products/8-2.jpg', N'Vàng' , '2024-09-01', 0.34, 31, 425.000,1,2),
(N'Áo 6', 1, 4, 'S,M,L', 30, N'YonShop 2Hand', 'view/assets/home/img/products/9-1.jpg view/assets/home/img/products/9-2.jpg', N'Đen, Nâu' , '2024-11-01', 0.41, 51, 2660.000,1,1),
(N'Áo 7', 2, 13, 'S,M,L,XL', 20, N'YonShop 2Hand'
, 'view/assets/home/img/products/10-1.jpg view/assets/home/img/products/10-2.jpg', N'Đen' , '2022-12-01', 0, 5, 1053.000,1,1),
(N'Giày 1', 2, 3, 'S', 15, N'YonShop 2Hand'
, 'view/assets/home/img/products/11-1.jpg view/assets/home/img/products/11-2.jpg', N'Đen' , '2024-02-01', 0.37, 76, 1100.000,1,1),
(N'Áo 8', 5, 2, 'S,M,L', 45, N'YonShop 2Hand'
, 'view/assets/home/img/products/12-1.jpg view/assets/home/img/products/12-2.jpg', N'Trắng' , '2024-11-01', 0, 72, 555.000,1,1),
(N'Quần 3', 5, 8, 'S,M,L', 30, N'YonShop 2Hand'
, 'view/assets/home/img/products/13-1.jpg view/assets/home/img/products/13-2.jpg', N'Xanh dương' , '2019-11-01', 0.31, 51, 325.000,1,2),
(N'Áo 9', 1, 13, 'M', 30, N'YonShop 2Hand', 'view/assets/home/img/products/14-1.jpg view/assets/home/img/products/14-2.jpg', N'Đỏ' , '2024-11-01', 0.17, 21, 2200.000,1,1),
(N'Áo 10', 1, 2, 'S,M,L', 10, N'YonShop 2Hand', 'view/assets/home/img/products/15-1.jpg view/assets/home/img/products/15-2.jpg', N'Vàng' , '2022-11-01', 0.2, 12, 950.000,1,1),
(N'Quần 4', 6, 6, 'M,L', 30, N'YonShop 2Hand', 'view/assets/home/img/products/16-1.jpg view/assets/home/img/products/16-2.jpg', N'Đen' , '2022-11-01', 0., 21, 415.000,1,2),
(N'Quần 5', 2, 6, 'S,M,L,XL', 30, N'YonShop 2Hand', 'view/assets/home/img/products/17-1.jpg view/assets/home/img/products/17-2.jpg', N'Đen' , '2024-09-01', 0.5, 61, 1050.000,1,2),
(N'Áo 11', 2, 2, 'S,L', 30, N'YonShop 2Hand', 'view/assets/home/img/products/18-1.jpg view/assets/home/img/products/18-2.jpg', N'Đỏ' , '2022-11-01', 0.41, 51, 412.000,1,1),
(N'Áo 12', 6, 9, 'S,M,L', 30, N'YonShop 2Hand'
, 'view/assets/home/img/products/19-1.jpg view/assets/home/img/products/19-2.jpg', N'Đen' , '2024-11-01', 0.11, 11, 345.000,1,1),
(N'Áo 13', 5, 2, 'S,M,L,XL' , 30, N'YonShop 2Hand'
, 'view/assets/home/img/products/20-1.jpg view/assets/home/img/products/20-2.jpg' , N'Trắng' , '2024-11-01' , 0., 81, 550.000,1,1),
(N'Áo 14', 5, 2,'S,M,L,XL' , 30, N'YonShop 2Hand'
, 'view/assets/home/img/products/21-1.jpg view/assets/home/img/products/21-2.jpg' , N'Trắng' , '2024-12-01' , 0., 81, 700.000,1,1),
(N'Áo 15', 5, 1,'XS,S,M,L,XL' , 30, N'YonShop 2Hand'
, 'view/assets/home/img/products/22-1.jpg view/assets/home/img/products/22-2.jpg' , N'Xanh dương' , '2024-09-01' , 0., 81, 500.000,1,1),
(N'Áo 16', 1, 2,'S,M,L' , 30, N'YonShop 2Hand'
, 'view/assets/home/img/products/23-1.jpg view/assets/home/img/products/23-2.jpg' , N'Trắng,Đen' , '2024-03-01' , 0., 81, 650.000,1,1),
(N'Áo 17', 4, 4,'S,M,L' , 30, N'YonShop 2Hand'
, 'view/assets/home/img/products/24-1.jpg view/assets/home/img/products/24-2.jpg' , N'Xanh lá,Đen' , '2024-10-01' , 0., 81, 950.000,1,1),
(N'Áo 18', 4, 4,'S,M,L' , 30, N'YonShop 2Hand'
, 'view/assets/home/img/products/25-1.jpg view/assets/home/img/products/25-2.jpg' , N'Xanh lá,Đen' , '2023-02-01' , 0., 81, 1500.000,1,1),
(N'Quần 6', 5, 7,'M,L,XL' , 30, N'YonShop 2Hand'
, 'view/assets/home/img/products/26-1.jpg view/assets/home/img/products/26-2.jpg' , N'Xanh lá' , '2023-03-02' , 0.1, 81, 700.000,1,1),
(N'Quần 7', 5, 7,'S,M,L' , 30, N'YonShop 2Hand'
, 'view/assets/home/img/products/27-1.jpg view/assets/home/img/products/27-2.jpg' , N'Vàng' , '2022-04-02' , 0.2, 81, 750.000,1,1)
--Phu kien
--...
INSERT INTO Products VALUES
(N'Giày 2', 2, 12,'41,42,43,44' , 30, N'YonShop 2Hand'
, 'view/assets/home/img/products/28-1.jpg view/assets/home/img/products/28-2.jpg view/assets/home/img/products/29-2.jpg' , N'Đen' , '2022-04-02' , 0.77, 11, 1040.000,1,3),
(N'Túi 1', 1, 11,'21cm x 5.5cm x 16cm' , 10, N'YonShop 2Hand', 'view/assets/home/img/products/29-1.jpg' , N'Đen' , '2022-04-02' , 0.3, 11, 1290.000,1,3),
(N'Túi 2', 1, 11,'4cm x 14cm x 16cm' , 10, N'YonShop 2Hand', 'view/assets/home/img/products/30-1.jpg' , N'Đen' , '2022-04-02' , 0.40, 11, 1250.000,1,3),
(N'Mũ 1', 3, 10,'L,M' , 5, N'YonShop 2Hand', 'view/assets/home/img/products/31-1.jpg view/assets/home/img/products/31-2.jpg' , N'Xanh đen' , '2022-04-02' , 0.06, 15, 550.000,1,3),
(N'Áo 19', 2, 1, 'S,M,L,XXL', 15, N'YonShop 2Hand'
, 'view/assets/home/img/products/32-1.jpg', N'Trắng' , '2022-02-01', 0.37, 76, 1090.000,1,1),
(N'Áo 20', 1, 4, 'S,M,L', 30, N'YonShop 2Hand', 'view/assets/home/img/products/33-1.jpg', N'Đỏ' , '2019-11-01', 0.31, 51, 1399.000,1,1),
(N'Mũ Lưỡi Trai Aerogram', 3, 10, 'Free', 30, N'YonShop 2Hand', 'view/assets/home/img/products/34-1.jpg', N'Đen' , '2024-09-01', 0.34, 31, 425.000,1,2),
(N'Áo 21', 2, 2, 'S,L,XL', 30, N'YonShop 2Hand'
, 'view/assets/home/img/products/35-1.jpg', N'Đen' , '2022-11-01', 0.41, 51, 412.000,1,1),
(N'ÁO 22', 1, 5,'S,M,L' , 30, N'YonShop 2Hand'
, 'view/assets/home/img/products/36-1.jpg' , N'Xanh dương' , '2024-03-01' , 0., 81, 650.000,1,1),
(N'Kính 1', 4, 14,'Free' , 30, N'YonShop 2Hand'
, 'view/assets/home/img/products/37-1.jpg' , N'Đen' , '2024-10-01' , 0., 81, 950.000,1,1),
(N'Kính 2', 4, 14,'Free' , 30, N'YonShop 2Hand'
, 'view/assets/home/img/products/38-1.jpg' , N'Xanh dương,Nâu,Đỏ' , '2023-02-01' , 0., 81, 1500.000,1,1)

INSERT INTO Payments VALUES 
(N'Tiền mặt'),
(N'Credit Card')

INSERT INTO [Orders] VALUES 
('2024-03-10 12:30:00', 2241.00, 1, 'user1', 1),
('2021-01-10 11:03:50', 699.00, 1, 'user1', 0),
('2024-02-10 10:15:00', 425.00, 1, 'user1', 0),
('2023-02-10 12:30:00', 1053.00, 1, 'user1', 0),
('2020-02-10 12:30:00', 875.0, 1, 'user3', 1),
('2019-02-14 12:30:00', 875.00, 1, 'admin', 1);

INSERT INTO OrderItem VALUES 
(1, 249.000, 1, 1),
(8, 249.000, 1, 1),
(4, 399.0, 4, 2),
(2, 699.0, 7, 2),
(3, 179.0, 2, 2),
(4, 249.0, 1, 2),
(5, 179.0, 2, 2),
(1, 325.0, 13, 3),
(1, 950.0, 15, 3),
(1, 179.0, 2, 4),
(7, 179.0, 2, 4),
(6, 315.0, 5, 5),
(9, 179.0, 2, 5),
(5, 179.0, 2, 5),
(2, 1050.0, 17, 6);
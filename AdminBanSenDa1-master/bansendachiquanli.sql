CREATE DATABASE bansendachiquanli;
use bansendachiquanli;
-- --
/*==============================typeOfFlow=====================================*/
create table typeOfFlow(idType char (4) not null PRIMARY key, name varchar(40));
-- --
INSERT INTO typeOfFlow VALUES ('LB01', 'Sen đá');
INSERT INTO typeOfFlow VALUES ('LB02', 'Sen đá');
INSERT INTO typeOfFlow VALUES ('LB03', 'Sen đá');
INSERT INTO typeOfFlow VALUES ('LB04', 'Sen đá');
INSERT INTO typeOfFlow VALUES ('LB05', 'Sen đá');
INSERT INTO typeOfFlow VALUES ('LB06', 'Sen đá');
INSERT INTO typeOfFlow VALUES ('LB07', 'Sen đá');
INSERT INTO typeOfFlow VALUES ('LB08', 'Sen đá');

/*==============================products=====================================*/
create table products(idProduct char(4) not null PRIMARY KEY, idType char(4), productName LONGTEXT,
                      size varchar(10), weight int, description longtext, introduction longtext, price float, STATUS tinyint(4) DEFAULT 0,
                      CONSTRAINT f_mlb FOREIGN KEY(idType) REFERENCES typeOfFlow(idType));
-- --
-- --
INSERT INTO products VALUES ('B001', 'LB01', 'Sen đá nâu', 'Vừa', 500, 'Sen đá nâu hay sen đá Socola. Đây là một loại cây được rất nhiều người yêu quý và chọn lựa màu sắc gần giống như màu sôcôla và có ý nghĩa vô cùng đặc biệt trong tình yêu', 'Cây sen đá này có nguồn gốc từ Mexico và chúng được du nhập về Việt Nam phổ biến khắp 3 miền Bắc Trung Nam.', 45000, 0);
INSERT INTO products VALUES ('B004', 'LB01', 'Sen đá vàng', 'Nhỏ', 380, 'Sen đá nâu hay sen đá Socola. Đây là một loại cây được rất nhiều người yêu quý và chọn lựa màu sắc gần giống như màu sôcôla và có ý nghĩa vô cùng đặc biệt trong tình yêu', 'Cây sen đá này có nguồn gốc từ Mexico và chúng được du nhập về Việt Nam phổ biến khắp 3 miền Bắc Trung Nam.', 25000, 0);
INSERT INTO products VALUES ('B005', 'LB01', 'Sen đá Phật Bà', 'Nhỏ', 500, 'Sen đá nâu hay sen đá Socola. Đây là một loại cây được rất nhiều người yêu quý và chọn lựa màu sắc gần giống như màu sôcôla và có ý nghĩa vô cùng đặc biệt trong tình yêu', 'Cây sen đá này có nguồn gốc từ Mexico và chúng được du nhập về Việt Nam phổ biến khắp 3 miền Bắc Trung Nam.', 33000, 0);
INSERT INTO products VALUES ('B008', 'LB01', 'Sen đá Rubi', 'Vừa', 500, 'Sen đá nâu hay sen đá Socola. Đây là một loại cây được rất nhiều người yêu quý và chọn lựa màu sắc gần giống như màu sôcôla và có ý nghĩa vô cùng đặc biệt trong tình yêu', 'Cây sen đá này có nguồn gốc từ Mexico và chúng được du nhập về Việt Nam phổ biến khắp 3 miền Bắc Trung Nam.', 45000, 0);
INSERT INTO products VALUES ('B010', 'LB01', 'Sen đá Tím', 'Nhỏ', 450, 'Sen đá nâu hay sen đá Socola. Đây là một loại cây được rất nhiều người yêu quý và chọn lựa màu sắc gần giống như màu sôcôla và có ý nghĩa vô cùng đặc biệt trong tình yêu', 'Cây sen đá này có nguồn gốc từ Mexico và chúng được du nhập về Việt Nam phổ biến khắp 3 miền Bắc Trung Nam.', 38000, 0);
INSERT INTO products VALUES ('B012', 'LB01', 'Sen đá móng rồng', 'Nhỏ', 500, 'Sen đá nâu hay sen đá Socola. Đây là một loại cây được rất nhiều người yêu quý và chọn lựa màu sắc gần giống như màu sôcôla và có ý nghĩa vô cùng đặc biệt trong tình yêu', 'Cây sen đá này có nguồn gốc từ Mexico và chúng được du nhập về Việt Nam phổ biến khắp 3 miền Bắc Trung Nam.', 40000, 0);
INSERT INTO products VALUES ('B014', 'LB01', 'Sen đá Thái (sen đá Xanh)', 'Bé', 300, 'Sen đá nâu hay sen đá Socola. Đây là một loại cây được rất nhiều người yêu quý và chọn lựa màu sắc gần giống như màu sôcôla và có ý nghĩa vô cùng đặc biệt trong tình yêu', 'Cây sen đá này có nguồn gốc từ Mexico và chúng được du nhập về Việt Nam phổ biến khắp 3 miền Bắc Trung Nam.', 18000, 0);
INSERT INTO products VALUES ('B023', 'LB01', 'Sen Thạch Bích (Sen ngọc Bích)', 'Nhỏ', 300, 'Sen đá nâu hay sen đá Socola. Đây là một loại cây được rất nhiều người yêu quý và chọn lựa màu sắc gần giống như màu sôcôla và có ý nghĩa vô cùng đặc biệt trong tình yêu', 'Cây sen đá này có nguồn gốc từ Mexico và chúng được du nhập về Việt Nam phổ biến khắp 3 miền Bắc Trung Nam.', 30000, 0);
INSERT INTO products VALUES ('B029', 'LB03', 'Sen đá tứ phương', 'Vừa', 500, 'Sen đá nâu hay sen đá Socola. Đây là một loại cây được rất nhiều người yêu quý và chọn lựa màu sắc gần giống như màu sôcôla và có ý nghĩa vô cùng đặc biệt trong tình yêu', 'Cây sen đá này có nguồn gốc từ Mexico và chúng được du nhập về Việt Nam phổ biến khắp 3 miền Bắc Trung Nam.', 40000, 0);
INSERT INTO products VALUES ('B034', 'LB03', 'Sen đá Cỏ Ngọc (Sen Ngân Chi)', 'Bé', 250, 'Sen đá nâu hay sen đá Socola. Đây là một loại cây được rất nhiều người yêu quý và chọn lựa màu sắc gần giống như màu sôcôla và có ý nghĩa vô cùng đặc biệt trong tình yêu', 'Cây sen đá này có nguồn gốc từ Mexico và chúng được du nhập về Việt Nam phổ biến khắp 3 miền Bắc Trung Nam.', 15000, 0);
INSERT INTO products VALUES ('B035', 'LB03', 'Sen Thạch Ngọc (Đỏ, Tím, Vàng, Xanh)', 'Bé', 250, 'Sen đá nâu hay sen đá Socola. Đây là một loại cây được rất nhiều người yêu quý và chọn lựa màu sắc gần giống như màu sôcôla và có ý nghĩa vô cùng đặc biệt trong tình yêu', 'Cây sen đá này có nguồn gốc từ Mexico và chúng được du nhập về Việt Nam phổ biến khắp 3 miền Bắc Trung Nam.', 15000, 0);
INSERT INTO products VALUES ('B039', 'LB02', 'Sen đá Dù - sen đá Dù Hồng', 'Nhỏ', 750, 'Sen đá nâu hay sen đá Socola. Đây là một loại cây được rất nhiều người yêu quý và chọn lựa màu sắc gần giống như màu sôcôla và có ý nghĩa vô cùng đặc biệt trong tình yêu', 'Cây sen đá này có nguồn gốc từ Mexico và chúng được du nhập về Việt Nam phổ biến khắp 3 miền Bắc Trung Nam.', 65000, 0);
INSERT INTO products VALUES ('B040', 'LB02', 'Sen đá Trái Tim - Sen đá lá tim', 'Nhỏ', 400, 'Sen đá nâu hay sen đá Socola. Đây là một loại cây được rất nhiều người yêu quý và chọn lựa màu sắc gần giống như màu sôcôla và có ý nghĩa vô cùng đặc biệt trong tình yêu', 'Cây sen đá này có nguồn gốc từ Mexico và chúng được du nhập về Việt Nam phổ biến khắp 3 miền Bắc Trung Nam.', 35000, 0);
INSERT INTO products VALUES ('B050', 'LB04', 'Sen đá Hàm Cá Mập', 'Lớn', 750, 'Sen đá nâu hay sen đá Socola. Đây là một loại cây được rất nhiều người yêu quý và chọn lựa màu sắc gần giống như màu sôcôla và có ý nghĩa vô cùng đặc biệt trong tình yêu', 'Cây sen đá này có nguồn gốc từ Mexico và chúng được du nhập về Việt Nam phổ biến khắp 3 miền Bắc Trung Nam.', 65000, 0);
INSERT INTO products VALUES ('B054', 'LB04', 'Sen đá Chuỗi Ngọc (Chuỗi Ngọc Đứng và Chuỗi Ngọc Bi)', 'Vừa', 450, ' Sen đá không chỉ là một món quà đẹp mắt mà còn mang đến ý nghĩa về sự bền vững, sức khỏe và may mắn trong cuộc sống.', 'Hãy đến với chúng tôi để lựa chọn những sản phẩm chất lượng và phong cách để thể hiện tình cảm của bạn đến người thân và bạn bè!', 35000, 0);
INSERT INTO products VALUES ('B067', 'LB06', 'Sen đá viền đỏ - sen đá Viền Lửa', 'Lớn', 600, 'Sen đá nâu hay sen đá Socola. Đây là một loại cây được rất nhiều người yêu quý và chọn lựa màu sắc gần giống như màu sôcôla và có ý nghĩa vô cùng đặc biệt trong tình yêu', 'Cây sen đá này có nguồn gốc từ Mexico và chúng được du nhập về Việt Nam phổ biến khắp 3 miền Bắc Trung Nam.', 65000, 0);
INSERT INTO products VALUES ('B088', 'LB08', 'Sen đá Nhím Đen', 'Vừa', 450, ' Sen đá không chỉ là một món quà đẹp mắt mà còn mang đến ý nghĩa về sự bền vững, sức khỏe và may mắn trong cuộc sống.', 'Hãy đến với chúng tôi để lựa chọn những sản phẩm chất lượng và phong cách để thể hiện tình cảm của bạn đến người thân và bạn bè!', 30000, 0);
INSERT INTO products VALUES ('B090', 'LB08', 'Sen đá Bắp cải Tím', 'Vừa', 450, ' Sen đá không chỉ là một món quà đẹp mắt mà còn mang đến ý nghĩa về sự bền vững, sức khỏe và may mắn trong cuộc sống.', 'Hãy đến với chúng tôi để lựa chọn những sản phẩm chất lượng và phong cách để thể hiện tình cảm của bạn đến người thân và bạn bè!', 30000, 0);
INSERT INTO products VALUES ('B099', 'LB06', 'Sen đá Lá Thơm (Cây Nhất Mạt Hương)', 'Vừa', 450, ' Sen đá không chỉ là một món quà đẹp mắt mà còn mang đến ý nghĩa về sự bền vững, sức khỏe và may mắn trong cuộc sống.', 'Hãy đến với chúng tôi để lựa chọn những sản phẩm chất lượng và phong cách để thể hiện tình cảm của bạn đến người thân và bạn bè!', 40000, 0);


/*==============================discounts=====================================*/
create table discounts( id int AUTO_INCREMENT PRIMARY KEY,
                        idProduct char(4),
                        discount DOUBLE,
                        startDate datetime,
                        expiryDate datetime,
                        CONSTRAINT f_mk FOREIGN KEY(idProduct) REFERENCES products(idProduct));
INSERT INTO discounts VALUES (2, 'B004', 0.2, '2022-12-11 00:00:00', '2023-12-20 00:00:00');


/*==============================ANH SP=====================================*/

CREATE table productImgs(idImg char(10) not null PRIMARY KEY, idProduct char(4) not null, img varchar(40), status TINYINT(10), CONSTRAINT f_msp FOREIGN KEY(idProduct) REFERENCES products(idProduct));
-- --
INSERT INTO productImgs VALUES ('ASP01-1', 'B001', 'img/product/B001/banh1.jpg', 0);
INSERT INTO productImgs VALUES ('ASP01-2', 'B001', 'img/product/B001/banh2.jpg', 0);
INSERT INTO productImgs VALUES ('ASP01-3', 'B001', 'img/product/B001/banh3.jpg', 0);
INSERT INTO productImgs VALUES ('ASP01-4', 'B001', 'img/product/B001/banh4.jpg', 0);
INSERT INTO productImgs VALUES ('ASP04-1', 'B004', 'img/product/B004/banh1.jpg', 0);
INSERT INTO productImgs VALUES ('ASP04-2', 'B004', 'img/product/B004/banh2.jpg', 0);
INSERT INTO productImgs VALUES ('ASP04-3', 'B004', 'img/product/B004/banh3.jpg', 0);
INSERT INTO productImgs VALUES ('ASP05-1', 'B005', 'img/product/B005/banh1.jpg', 0);
INSERT INTO productImgs VALUES ('ASP05-2', 'B005', 'img/product/B005/banh2.jpg', 0);
INSERT INTO productImgs VALUES ('ASP05-3', 'B005', 'img/product/B005/banh3.jpg', 0);
INSERT INTO productImgs VALUES ('ASP08-1', 'B008', 'img/product/B008/banh1.jpg', 0);
INSERT INTO productImgs VALUES ('ASP08-2', 'B008', 'img/product/B008/banh2.jpg', 0);
INSERT INTO productImgs VALUES ('ASP08-3', 'B008', 'img/product/B008/banh3.jpg', 0);
INSERT INTO productImgs VALUES ('ASP10-1', 'B010', 'img/product/B010/banh1.jpg', 0);
INSERT INTO productImgs VALUES ('ASP10-2', 'B010', 'img/product/B010/banh2.jpg', 0);
INSERT INTO productImgs VALUES ('ASP10-3', 'B010', 'img/product/B010/banh3.jpg', 0);
INSERT INTO productImgs VALUES ('ASP10-4', 'B010', 'img/product/B010/banh4.jpg', 0);
INSERT INTO productImgs VALUES ('ASP12-1', 'B012', 'img/product/B012/banh1.jpg', 0);
INSERT INTO productImgs VALUES ('ASP12-2', 'B012', 'img/product/B012/banh2.jpg', 0);
INSERT INTO productImgs VALUES ('ASP12-3', 'B012', 'img/product/B012/banh3.jpg', 0);
INSERT INTO productImgs VALUES ('ASP14-1', 'B014', 'img/product/B014/banh1.jpg', 0);
INSERT INTO productImgs VALUES ('ASP14-2', 'B014', 'img/product/B014/banh2.jpg', 0);
INSERT INTO productImgs VALUES ('ASP14-3', 'B014', 'img/product/B014/banh3.jpg', 0);
INSERT INTO productImgs VALUES ('ASP23-1', 'B023', 'img/product/B023/banh1.jpg', 0);
INSERT INTO productImgs VALUES ('ASP23-2', 'B023', 'img/product/B023/banh2.jpg', 0);
INSERT INTO productImgs VALUES ('ASP23-3', 'B023', 'img/product/B023/banh3.jpg', 0);
INSERT INTO productImgs VALUES ('ASP23-4', 'B023', 'img/product/B023/banh4.jpg', 0);
INSERT INTO productImgs VALUES ('ASP29-1', 'B029', 'img/product/B029/banh1.jpg', 0);
INSERT INTO productImgs VALUES ('ASP29-2', 'B029', 'img/product/B029/banh2.jpg', 0);
INSERT INTO productImgs VALUES ('ASP29-3', 'B029', 'img/product/B029/banh3.jpg', 0);
INSERT INTO productImgs VALUES ('ASP34-1', 'B034', 'img/product/B034/banh1.jpg', 0);
INSERT INTO productImgs VALUES ('ASP34-2', 'B034', 'img/product/B034/banh2.jpg', 0);
INSERT INTO productImgs VALUES ('ASP34-3', 'B034', 'img/product/B034/banh3.jpg', 0);
INSERT INTO productImgs VALUES ('ASP35-1', 'B035', 'img/product/B035/banh1.jpg', 0);
INSERT INTO productImgs VALUES ('ASP35-2', 'B035', 'img/product/B035/banh2.jpg', 0);
INSERT INTO productImgs VALUES ('ASP35-3', 'B035', 'img/product/B035/banh3.jpg', 0);
INSERT INTO productImgs VALUES ('ASP35-4', 'B035', 'img/product/B035/banh4.jpg', 0);
INSERT INTO productImgs VALUES ('ASP39-1', 'B039', 'img/product/B039/banh1.jpg', 0);
INSERT INTO productImgs VALUES ('ASP39-2', 'B039', 'img/product/B039/banh2.jpg', 0);
INSERT INTO productImgs VALUES ('ASP39-3', 'B039', 'img/product/B039/banh3.jpg', 0);
INSERT INTO productImgs VALUES ('ASP39-4', 'B039', 'img/product/B039/banh4.jpg', 0);
INSERT INTO productImgs VALUES ('ASP40-1', 'B040', 'img/product/B040/banh1.jpg', 0);
INSERT INTO productImgs VALUES ('ASP40-2', 'B040', 'img/product/B040/banh2.jpg', 0);
INSERT INTO productImgs VALUES ('ASP40-3', 'B040', 'img/product/B040/banh3.jpg', 0);
INSERT INTO productImgs VALUES ('ASP40-4', 'B040', 'img/product/B040/banh4.jpg', 0);
INSERT INTO productImgs VALUES ('ASP50-1', 'B050', 'img/product/B050/banh1.jpg', 0);
INSERT INTO productImgs VALUES ('ASP50-2', 'B050', 'img/product/B050/banh2.jpg', 0);
INSERT INTO productImgs VALUES ('ASP50-3', 'B050', 'img/product/B050/banh3.jpg', 0);
INSERT INTO productImgs VALUES ('ASP54-1', 'B054', 'img/product/B054/banh1.jpg', 0);
INSERT INTO productImgs VALUES ('ASP54-2', 'B054', 'img/product/B054/banh2.jpg', 0);
INSERT INTO productImgs VALUES ('ASP54-3', 'B054', 'img/product/B054/banh3.jpg', 0);
INSERT INTO productImgs VALUES ('ASP54-4', 'B054', 'img/product/B054/banh4.jpg', 0);
INSERT INTO productImgs VALUES ('ASP88-1', 'B088', 'img/product/B088/banh1.jpg', 0);
INSERT INTO productImgs VALUES ('ASP88-2', 'B088', 'img/product/B088/banh2.jpg', 0);
INSERT INTO productImgs VALUES ('ASP88-3', 'B088', 'img/product/B088/banh3.jpg', 0);
INSERT INTO productImgs VALUES ('ASP90-1', 'B090', 'img/product/B090/banh1.jpg', 0);
INSERT INTO productImgs VALUES ('ASP90-2', 'B090', 'img/product/B090/banh2.jpg', 0);
INSERT INTO productImgs VALUES ('ASP90-3', 'B090', 'img/product/B090/banh3.jpg', 0);
INSERT INTO productImgs VALUES ('ASP99-1', 'B099', 'img/product/B099/banh1.jpg', 0);
INSERT INTO productImgs VALUES ('ASP99-2', 'B099', 'img/product/B099/banh2.jpg', 0);
INSERT INTO productImgs VALUES ('ASP99-3', 'B099', 'img/product/B099/banh3.jpg', 0);

/*==============================productDetails=====================================*/
create table productDetails(idProduct char(4) not null,
                            quantity int,
                            inventory int,
                            dateOfManufacture DATETIME,
                            expirationDate DATETIME,
                            CONSTRAINT f_mspproductDetails FOREIGN KEY(idProduct) REFERENCES products(idProduct));
INSERT INTO productDetails VALUES ('B001', 10, 10, '2022-10-12 00:00:00', '2022-10-15 00:00:00');
INSERT INTO productDetails VALUES ('B004', 10, 10, '2022-10-12 00:00:00', '2022-10-15 00:00:00');
INSERT INTO productDetails VALUES ('B005', 10, 10, '2022-10-12 00:00:00', '2022-10-15 00:00:00');
INSERT INTO productDetails VALUES ('B008', 20, 10, '2022-10-12 00:00:00', '2022-10-15 00:00:00');
INSERT INTO productDetails VALUES ('B010', 10, 10, '2022-10-12 00:00:00', '2022-10-15 00:00:00');
INSERT INTO productDetails VALUES ('B012', 10, 10, '2022-10-12 00:00:00', '2022-10-15 00:00:00');
INSERT INTO productDetails VALUES ('B014', 10, 10, '2022-10-12 00:00:00', '2022-10-15 00:00:00');
INSERT INTO productDetails VALUES ('B023', 15, 10, '2022-10-12 00:00:00', '2022-10-15 00:00:00');
INSERT INTO productDetails VALUES ('B029', 10, 10, '2022-10-12 00:00:00', '2022-10-15 00:00:00');
INSERT INTO productDetails VALUES ('B034', 10, 10, '2022-10-12 00:00:00', '2022-10-15 00:00:00');
INSERT INTO productDetails VALUES ('B035', 10, 10, '2022-10-12 00:00:00', '2022-10-15 00:00:00');
INSERT INTO productDetails VALUES ('B039', 10, 10, '2022-10-12 00:00:00', '2022-10-15 00:00:00');
INSERT INTO productDetails VALUES ('B040', 10, 10, '2022-10-12 00:00:00', '2022-10-15 00:00:00');
INSERT INTO productDetails VALUES ('B050', 10, 10, '2022-10-12 00:00:00', '2022-10-15 00:00:00');
INSERT INTO productDetails VALUES ('B054', 10, 10, '2022-10-12 00:00:00', '2022-10-15 00:00:00');
INSERT INTO productDetails VALUES ('B067', 10, 10, '2022-10-12 00:00:00', '2022-10-15 00:00:00');
INSERT INTO productDetails VALUES ('B088', 20, 10, '2022-10-12 00:00:00', '2022-10-15 00:00:00');
INSERT INTO productDetails VALUES ('B090', 10, 10, '2022-10-12 00:00:00', '2022-10-15 00:00:00');
INSERT INTO productDetails VALUES ('B099', 10, 10, '2022-10-12 00:00:00', '2022-10-15 00:00:00');
/*=========================================ACCOUNTS=========================================*/
CREATE TABLE ACCOUNTS(ID CHAR(50) PRIMARY KEY not null,
                      EMAIL VARCHAR(255) not null,
                      PASS VARCHAR(255),
                      NAME VARCHAR(100) not null,
                      ROLE tinyint(4) NOT NULL DEFAULT 0,
                      STATUS tinyint(4) DEFAULT 0, TYPE VARCHAR(10),
                      ISADD tinyint(4) NOT NULL DEFAULT 0,
                      ISEDIT tinyint(4) NOT NULL DEFAULT 0,
                      ISDELETE tinyint(4) NOT NULL DEFAULT 0);
INSERT INTO ACCOUNTS VALUES ('AD01', 'thanhtin@gmail.com', '123', 'Tín', 2, 0, NULL, 1, 1, 1);
INSERT INTO ACCOUNTS VALUES ('AD02', 'lili@gmail.com', '123', 'Ly', 2, 0, NULL, 1, 1, 1);
INSERT INTO ACCOUNTS VALUES ('AD03', 'ductuan@gmai.com', '123', 'Tuấn', 2, 0, NULL, 1, 1, 1);
INSERT INTO ACCOUNTS VALUES ('AD04', 'kiet@gmail.com', '123', 'Kiệt', 1, 0, NULL, 1, 1, 1);
INSERT INTO ACCOUNTS VALUES ('AD05', 'nhom271@gmail.com', '8a050fa1b4e6ed4a40629264f4f833da8bb5592e782d3c7ed9a4da7c3a3b5c53', 'Nhóm 271', 0, 0, NULL, 1, 1, 1);
INSERT INTO ACCOUNTS VALUES ('AD06', 'nhom272@gmail.com', '8a050fa1b4e6ed4a40629264f4f833da8bb5592e782d3c7ed9a4da7c3a3b5c53', 'Nhóm 272', 0, 0, NULL, 1, 1, 1);
INSERT INTO ACCOUNTS VALUES ('AD07', 'nhom273@gmail.com', '8a050fa1b4e6ed4a40629264f4f833da8bb5592e782d3c7ed9a4da7c3a3b5c53', 'Nhóm 273', 0, 0, NULL, 1, 1, 1);
INSERT INTO ACCOUNTS VALUES ('AD08', 'nhom274@gmail.com', '8a050fa1b4e6ed4a40629264f4f833da8bb5592e782d3c7ed9a4da7c3a3b5c53', 'Nhóm 274', 0, 0, NULL, 1, 1, 1);
INSERT INTO ACCOUNTS VALUES ('AD09', 'nhom275@gmail.com', '8a050fa1b4e6ed4a40629264f4f833da8bb5592e782d3c7ed9a4da7c3a3b5c53', 'Nhóm 275', 0, 0, NULL, 1, 1, 1);

/*==============================CUSTOMERS=====================================*/
CREATE TABLE CUSTOMERS(ID CHAR(50) PRIMARY KEY NOT NULL,
                       ADDRESS VARCHAR(60),
                       PHONE VARCHAR(10),
                       CONSTRAINT f_mTK FOREIGN KEY (ID) REFERENCES ACCOUNTS(ID));
INSERT INTO CUSTOMERS VALUES('AD01','TP.HCM', '0978675678');
INSERT INTO CUSTOMERS VALUES('AD02', 'TP.HCM', '0987675435');
INSERT INTO CUSTOMERS VALUES('AD03', 'TP.HCM', '0987863764');
INSERT INTO CUSTOMERS VALUES('AD04', 'TP.HCM', '0987467536');
INSERT INTO CUSTOMERS VALUES('AD05', 'BINH DUONG', '0987463578');
INSERT INTO CUSTOMERS VALUES('AD06',  'DONG NAI', '0978365478');
INSERT INTO CUSTOMERS VALUES('AD07',  'TP.HCM', '0987425367');
INSERT INTO CUSTOMERS VALUES('AD08',  'TP.HCM', '0976456736');
INSERT INTO CUSTOMERS VALUES('AD09',  'LONG AN', '0978365627');

/*==============================BILLS=====================================*/
CREATE TABLE BILLS(ID CHAR(4) PRIMARY KEY,
                   CUSTOMER_ID CHAR(50),
                   EXPORT_DATE DATETIME NOT NULL,
                   NOTES LONGTEXT,
                   TOTAL_BILL FLOAT,
                   STATUS int DEFAULT 0,
                   CREATE_BY CHAR(4) DEFAULT NULL,
                   CONSTRAINT f_kh FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMERS(ID ));
INSERT INTO BILLS VALUES('HD01', 'AD02', '2022/10/12','Giao sớm, đúng địa chỉ nha shop ơi', 90000, 0,NULL);
INSERT INTO BILLS VALUES('HD02', 'AD04', '2022/10/19','Giao sớm, đúng địa chỉ nha shop ơi', 33000, 1,NULL);
INSERT INTO BILLS VALUES('HD03', 'AD05', '2022/10/12','Giao sớm, đúng địa chỉ nha shop ơi', 95000, 0,NULL);
INSERT INTO BILLS VALUES('HD04', 'AD02', '2022/9/23','Giao sớm, đúng địa chỉ nha shop ơi', 30000, 1,NULL);
INSERT INTO BILLS VALUES('HD05', 'AD01', '2022/10/21','Giao sớm, đúng địa chỉ nha shop ơi', 123000, 0,NULL);
INSERT INTO BILLS VALUES('HD06', 'AD03', '2022/10/12','Giao sớm, đúng địa chỉ nha shop ơi', 90000, 0,NULL);
INSERT INTO BILLS VALUES('HD07', 'AD03', '2022/5/6','Giao sớm, đúng địa chỉ nha shop ơi', 38000, 2,NULL);
INSERT INTO BILLS VALUES('HD08', 'AD01', '2022/8/12','Giao sớm, đúng địa chỉ nha shop ơi', 40000, 0,NULL);
INSERT INTO BILLS VALUES('HD09', 'AD06', '2022/7/15','Giao sớm, đúng địa chỉ nha shop ơi', 40000, 1,NULL);
INSERT INTO BILLS VALUES('HD10', 'AD07', '2022/11/7','Giao sớm, đúng địa chỉ nha shop ơi', 65000, 0,NULL);
INSERT INTO BILLS VALUES('HD11', 'AD01', '2022/1/19','Giao sớm, đúng địa chỉ nha shop ơi', 195000, 1,NULL);
INSERT INTO BILLS VALUES('HD12', 'AD02', '2023/1/8','Giao sớm, đúng địa chỉ nha shop ơi', 35000, 0,NULL);
INSERT INTO BILLS VALUES('HD13', 'AD01', '2023/1/8','Giao sớm, đúng địa chỉ nha shop ơi', 50000, 2,NULL);
INSERT INTO BILLS VALUES('HD14', 'AD09', '2023/1/8','Giao sớm, đúng địa chỉ nha shop ơi', 30000, 0,NULL);
INSERT INTO BILLS VALUES('HD15', 'AD02', '2023/1/8','Giao sớm, đúng địa chỉ nha shop ơi', 30000, 0,NULL);

/*==============================BILL_DETAIL=====================================*/
CREATE TABLE BILL_DETAIL(ID CHAR(4),
                         idProduct CHAR(4),
                         AMOUNT INT,
                         NOTES LONGTEXT,
                         CONSTRAINT f_mhdcthd FOREIGN KEY(idProduct) REFERENCES products(idProduct),
                         CONSTRAINT f_mspcthd FOREIGN KEY (ID) REFERENCES BILLS(ID));
INSERT INTO BILL_DETAIL VALUES('HD01', 'B001', 2, 'Chúc mừng sinh nhật 2 tuổi');
INSERT INTO BILL_DETAIL VALUES('HD02', 'B005', 1, 'Chúc mừng sinh nhật 32 tuổi');
INSERT INTO BILL_DETAIL VALUES('HD03', 'B039', 1, 'Chúc mừng sinh nhật 25 tuổi');
INSERT INTO BILL_DETAIL VALUES('HD03', 'B035', 2, 'Chúc mừng sinh nhật 2 tuổi');
INSERT INTO BILL_DETAIL VALUES('HD04', 'B023', 1, 'Chúc mừng sinh nhật 27 tuổi');
INSERT INTO BILL_DETAIL VALUES('HD05', 'B014', 1, 'Chúc mừng sinh nhật 2 tuổi');
INSERT INTO BILL_DETAIL VALUES('HD05', 'B012', 2, 'Chúc mừng sinh nhật 52 tuổi');
INSERT INTO BILL_DETAIL VALUES('HD05', 'B004', 1, 'Chúc mừng sinh nhật 12 tuổi');
INSERT INTO BILL_DETAIL VALUES('HD06', 'B008', 2, 'Chúc mừng sinh nhật 2 tuổi');
INSERT INTO BILL_DETAIL VALUES('HD07', 'B010', 1, 'Chúc mừng sinh nhật 22 tuổi');
INSERT INTO BILL_DETAIL VALUES('HD08', 'B099', 1, 'Chúc mừng sinh nhật 21 tuổi');
INSERT INTO BILL_DETAIL VALUES('HD09', 'B029', 1, 'Chúc mừng sinh nhật 25 tuổi');
INSERT INTO BILL_DETAIL VALUES('HD10', 'B067', 1, 'Chúc mừng sinh nhật 28 tuổi');
INSERT INTO BILL_DETAIL VALUES('HD11', 'B050', 3, 'Chúc mừng sinh nhật 62 tuổi');
INSERT INTO BILL_DETAIL VALUES('HD12', 'B040', 1, 'Chúc mừng sinh nhật 29 tuổi');
INSERT INTO BILL_DETAIL VALUES('HD13', 'B054', 1, 'Chúc mừng sinh nhật 30 tuổi');
INSERT INTO BILL_DETAIL VALUES('HD13', 'B034', 1, 'Chúc mừng sinh nhật 24 tuổi');
INSERT INTO BILL_DETAIL VALUES('HD13', 'B014', 3, 'Chúc mừng sinh nhật 24 tuổi');
INSERT INTO BILL_DETAIL VALUES('HD14', 'B088', 1, 'Chúc mừng sinh nhật 23 tuổi');
INSERT INTO BILL_DETAIL VALUES('HD15', 'B090', 1, 'Chúc mừng sinh nhật 20 tuổi');

/*=============================================DELIVERY=======================================*/
CREATE TABLE DELIVERY(ID CHAR(4),
                      DELIVERY_DATE DATETIME NOT NULL,
                      ADDRESS VARCHAR(60) NOT NULL,
                      EMAIL VARCHAR(60),
                      PHONE VARCHAR(12),
                      NAMECUSTOMER VARCHAR(60),
                      CONSTRAINT f_mhdgh FOREIGN KEY(ID) REFERENCES BILLS(ID));

INSERT INTO DELIVERY VALUES('HD01', '2022/10/14', 'Q1, TP HCM', null, null,null);
INSERT INTO DELIVERY VALUES('HD02', '2022/10/23', 'Q3, TP HCM', null, null,null);
INSERT INTO DELIVERY VALUES('HD03', '2022/10/15', 'TP.THỦ ĐỨC TP HCM', null, null,null);
INSERT INTO DELIVERY VALUES('HD04', '2022/9/25', 'Q1, TP HCM', null, null,null);
INSERT INTO DELIVERY VALUES('HD05', '2022/10/24', 'ĐỒNG NAI', null, null,null);
INSERT INTO DELIVERY VALUES('HD06', '2022/10/15', 'Q10, TP HCM', null, null,null);
INSERT INTO DELIVERY VALUES('HD07', '2022/5/11', 'Q10, TP HCM', null, null,null);
INSERT INTO DELIVERY VALUES('HD08', '2022/8/15', 'Q.BÌNH THẠNH, TP HCM', null, null,null);
INSERT INTO DELIVERY VALUES('HD09', '2022/7/17', 'H.CHÂU THÀNH,LONG AN', null, null,null);
INSERT INTO DELIVERY VALUES('HD10', '2022/11/10', 'Q9, TP HCM', null, null,null);
INSERT INTO DELIVERY VALUES('HD11', '2022/1/22', 'Q.BÌNH CHÁNH, TP HCM', null, null,null);
INSERT INTO DELIVERY VALUES('HD12', '2023/1/12', 'Q1, TP HCM', null, null,null);
INSERT INTO DELIVERY VALUES('HD13', '2023/1/11', 'Q1, TP HCM', null, null,null);
INSERT INTO DELIVERY VALUES('HD14', '2023/1/12', 'Q3, TP HCM', null, null,null);
INSERT INTO DELIVERY VALUES('HD15', '2023/1/13', 'Q1, TP HCM', null, null,null);


/*=========================================Comments=========================================*/

CREATE table Comments(IdCmt INT PRIMARY KEY AUTO_INCREMENT,idProduct CHAR(4) not null, ID CHAR(50)  not null , comment longtext, date datetime, STATUS tinyint(4) DEFAULT 0);

INSERT into Comments VALUES(1,'B001','AD02',"Lần đầu đặt bánh ở tiệm này thấy rất hài lòng, cầm chiếc bánh trên tay đi tặng được mọi người khen . Rất hài lòng, trang trí sang trọng, đẹp mắt.", '2022/11/22', 0);
INSERT into Comments VALUES(2,'B002','AD01',"Đặt bánh ở tiệm này thấy rất hài lòng, cầm chiếc bánh trên tay đi tặng được mọi người khen . Rất hài lòng, trang trí sang trọng, đẹp mắt.", '2023/03/02', 0);
/*========================================= BLOG =========================================*/
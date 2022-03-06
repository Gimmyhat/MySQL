USE db_shop;

INSERT INTO users
    (id, first_name, last_name, email, phone, gender, birthday, is_admin)
VALUES
    ('1', 'admin', 'admin', 'admin@myshop.com', '1118887766', null, null, 1);

INSERT INTO users
    (first_name, last_name, email, phone, gender, birthday)
VALUES
    ('Сергей', 'Кущин', 'serk@mail.ru', '9061112233', 'm', '1987-02-13'),
    ('Антон', 'Дровиков', 'antdro@yandex.ru', 9153331122, 'm', '1985-04-12'),
    ('Алексей', 'Переверзев', 'alexei@bk.ru', 9038902245, 'm', '1990-10-20'),
    ('Татьяна', 'Рупич', 'rupic@rambler.ru', 9084328855, 'f', '1989-02-02'),
    ('Алексей', 'Тарасенков', 'tarasenkovA@mail.ru', 9992345890, 'm', '1987-05-20'),
    ('Юля', 'Платонова', 'juliaPlatonova@bk.ru', 9103569120, 'f', '1980-06-05'),
    ('Петр', 'Зименс', 'pzimens@f-fly.com', 9067829233, 'm', '1987-05-14'),
    ('Егор', 'Елин', 'egore@gmail.com', 9153240204, 'm', '2004-11-15'),
    ('Евгения', 'Скичко', 'sickoe@bk.ru', 9330890109, 'f', '1986-12-12'),
    ('Дмитрий', 'Бронских', 'dbronskih@gmail.com', 9040121993, 'm', '1995-11-03');


-- Наполнение таблицы брендов

INSERT INTO brands
    (name)
VALUES
    ('Adidas'),
    ('Calvin Klein'),
    ('Tommy Hilfiger'),
    ('Nike'),
    ('PRADO'),
    ('Hugo BOSS'),
    ('Colin''s'),
    ('Pull & Bear'),
    ('Marks & Spencer'),
    ('Armani');


-- Наполнение категорий

INSERT INTO categories
    (name, discount, alias_name)
VALUES
    ('Женская одежда', 5 , 'Woman dress'),
    ('Женская обувь', 0, 'Woman shoes'),
    ('Женские сумки', 0 , 'Woman bags'),
    ('Женские аксессуары', 0 , 'Woman accessories'),
    ('Женское белье', 0, 'Woman underwear'),
    ('Скидочные товары для женщин', 15, 'Woman''s sale'),
    ('Мужская одежда', 5 , 'Man dress'),
    ('Мужская обувь', 0, 'Man shoes'),
    ('Мужские сумки', 0 , 'Man bags'),
    ('Мужские аксессуары', 0 , 'Man accessories');


-- Наполнение типов товаров

INSERT INTO product_type
    (name)
VALUES
    ('Футболки'),
    ('Платья'),
    ('Рубашки'),
    ('Брюки'),
    ('Юбки'),
    ('Портфели'),
    ('Рюкзаки'),
    ('Ремни'),
    ('Кроссовки'),
    ('Ботинки');


-- Наполнение стран производителей

INSERT INTO country_of_manufacture
    (name)
VALUES
    ('USA'),
    ('Russia'),
    ('Germany'),
    ('France'),
    ('Italy'),
    ('China'),
    ('Norway'),
    ('Brazil'),
    ('Belgium'),
    ('Sweden');

-- Наполнение таблицв товаров

INSERT INTO products
    (name, brand_id, product_type_id, category_id, price, article, discount)
VALUES
    ('РУБАШКА TH FLEX УЗКОГО КРОЯ', 4, 3, 8, 10500.99, 'th flex tommy', 0),
    ('БОТИНКИ НА РЕЛЬЕФНОЙ ПОДОШВЕ', 3, 15, 3, 20500, 'woman shoes #1', 0),
    ('КРОССОВКИ НА ТЕПЛОЙ ПОДКЛАДКЕ', 1, 14, 3, 13500, 'woman shoes #2', 0),
    ('ФУТБОЛКА С ЛОГОТИПОМ 1985', 1, 1, 8, 4990, 'man polo #1', 0),
    ('БРЮКИ BLEECKER С ШЕВРОННЫМ УЗОРОМ', 7, 5, 8, 7990, 'man trousers #12', 0),
    ('ДЖОГЕРЫ MERCEDES-BENZ', 3, 5, 8, 1990, 'man trousers #122', 0),
    ('БРЮКИ С ЛАМПАСАМИ', 9, 5, 2, 3890, 'woman trousers #122', 0),
    ('ТЕКСТУРНЫЕ НОСКИ', 5, 8, 8, 890, 'man socks #2', 0),
    ('БЛЕСТЯЩИЕ НОСКИ', 6, 8, 2, 690, 'woman socks #2', 0),
    ('ТЕКСТУРНЫЕ НОСКИ 2', 5, 8, 13, 1890, 'man sale  socks #2', 0);


-- Наполнение подробного описания товара

INSERT INTO products_media
    (product_media_id,
`desc`, metadata, made_in)
VALUES
(1, 'desc for prod 1', '{"material": "cotton", "Guarantee": "2 weeks"}', 1),
(2, 'desc for prod 2', '{"material": "leather", "Guarantee": "2 years"}', 2),
(3, 'desc for prod 3', '{"material": "akril", "Guarantee": "4 weeks"}', 3),
(4, 'desc for prod 4', '{"material": "cotton", "Guarantee": "3 weeks"}', 4),
(5, 'desc for prod 5', '{"material": "leather", "Guarantee": "3 weeks"}', 5),
(6, 'desc for prod 6', '{"material": "cotton", "Guarantee": "3 weeks"}', 6),
(7, 'desc for prod 7', '{"material": "cotton", "Guarantee": "2 years"}', 7),
(8, 'desc for prod 8', '{"material": "cotton", "Guarantee": "2 year"}', 8),
(9, 'desc for prod 9', '{"material": "cotton", "Guarantee": "1 week"}', 9),
(10, 'desc for prod 10', '{"material": "cotton", "Guarantee": "3 weeks"}', 10);


-- Наполнение таблицы размеров тут будут и для обуви и одежды

INSERT INTO sizes
    (name)
VALUES
    ('Without size'),
    ('XS'),
    ('S'),
    ('M'),
    ('L'),
    ('XL'),
    ('XXL'),
    ('XXXL'),
    ('34'),
    ('35'),
    ('36'),
    ('37'),
    ('38'),
    ('39'),
    ('40'),
    ('41'),
    ('42'),
    ('43'),
    ('44'),
    ('45'),
    ('30/32'),
    ('30/33'),
    ('30/34'),
    ('31/32'),
    ('31/33'),
    ('31/34'),
    ('32/32'),
    ('32/33'),
    ('32/34'),
    ('70'),
    ('75'),
    ('80'),
    ('85'),
    ('90'),
    ('95'),
    ('100'),
    ('105');



-- Наполнение таблицы товаров с определенным размером и их количество


INSERT INTO products_sizes
    (product_id, size_id, count)
VALUES

    (1, 2, 20),
    (1, 3, 20),
    (1, 4, 20),
    (1, 5, 20),
    (1, 6, 20),
    (1, 7, 20),
    (1, 8, 20),
    (2, 4, 20),
    (2, 5, 20),
    (3, 3, 20),
    (4, 12, 20),
    (4, 13, 20),
    (4, 9, 20),
    (4, 10, 20),
    (4, 11, 20),
    (4, 14, 20),
    (4, 15, 20),
    (4, 16, 20),
    (5, 14, 20),
    (6, 14, 20),
    (7, 14, 20),
    (8, 17, 20),
    (9, 17, 20);


-- Таблица рейтингов он будет анонимный поэтому к пользователю не привязан

INSERT INTO product_rating
    (product_id_rating, stars)
VALUES
    (1, '4'),
    (1, '5'),
    (1, '3'),
    (1, '2'),
    (1, '5'),
    (2, '5'),
    (3, '5'),
    (4, '4'),
    (5, '3'),
    (6, '3'),
    (7, '3'),
    (8, '3'),
    (9, '4'),
    (10, '4'),
    (11, '4'),
    (12, '4'),
    (13, '4'),
    (14, '4'),
    (15, '4'),
    (16, '1'),
    (17, '1'),
    (18, '1'),
    (19, '1'),
    (20, '1'),
    (21, '2'),
    (22, '2'),
    (23, '2'),
    (24, '2'),
    (25, '2'),
    (26, '2');



-- Таблица комментариев для отдельного товара

INSERT INTO product_comments
    (product_id, user_id, body, useful)
VALUES
    (1, 1 , 'Комментарий #1 для товара 1', 0),
    (1, 2 , 'Комментарий #2 для товара 1', 1),
    (1, 3 , 'Комментарий #3 для товара 1', 2),
    (2, 1 , 'Комментарий #1 для товара 2', 0),
    (2, 4 , 'Комментарий #2 для товара 2', default),
    (20, 8 , 'Комментарий #1 для товара 20', 10),
    (22, 5 , 'Комментарий #1 для товара 22', 7),
    (30, 7 , 'Комментарий #1 для товара 30', 2),
    (30, 2 , 'Комментарий #2 для товара 30', 2),
    (12, 8 , 'Комментарий #1 для товара 12', 32);


-- Таблица денежных средств польователей id = 1 Счет магазина

INSERT INTO user_bank_account
    (user_id, money)
VALUES
    (1, 20000),
    (2, 2000),
    (3, 500.99),
    (4, 1500.99),
    (5, 0),
    (6, 0),
    (7, 50000),
    (8, 800.39),
    (9, 3990),
    (10, 990.55);


-- Таблица заказов

INSERT INTO orders
    (buyer, status)
VALUES
    (2, default),
    (3, 'Оплачен'),
    (3, 'Отправлен'),
    (3, 'Доставлен'),
    (4, default),
    (4, 'Оплачен'),
    (5, 'Отправлен'),
    (5, 'Оплачен'),
    (6, default),
    (7, 'Оплачен'),
    (8, 'Оплачен');


-- Таблица корзины пользователя с его товарами и разными заказами

INSERT INTO order_products
    (order_id, product_id, count)
VALUES
    (1, 2, 3),
    (1, 4, 1),
    (1, 15, 2),
    (2, 22, 1),
    (3, 32, 2),
    (3, 3, 1),
    (3, 33, 1),
    (4, 27, 2),
    (4, 7, 1),
    (5, 51, 3),
    (6, 38, 1),
    (7, 42, 1),
    (8, 30, 2),
    (9, 37, 1),
    (10, 47, 1),
    (11, 9, 2);
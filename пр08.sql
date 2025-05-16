INSERT INTO level (number_level) VALUES (1), (2), (3), (2), (1);
INSERT INTO status_job (repair_job) 
VALUES ('Выполнено'), ('В процессе'), ('Отложено'), ('Не начато'), ('Проблемы');
INSERT INTO brand (name) 
VALUES ('Volvo'), ('BMW'), ('Mersedes'), ('Lada'), ('Lambarguni');
INSERT INTO type_body (description) 
VALUES ('Седан'), ('Купе'), ('Хетчбек'), ('Лифтбек'), ('Фастбек');
INSERT INTO model (title, brand) 
VALUES ('S60', 1), ('M5 F90', 2), ('GL-Klasse', 3), ('Granta', 4), ('Reventon', 5);
INSERT INTO car_mechanic (date_of_birth, level, last_name, first_name, third_name) 
VALUES 
('1990-02-01', 1, 'Сергей', 'Иванов', 'Анатольевич'),
('1991-01-03', 2, 'Егор', 'Гусихин', 'Алексннвич'),
('1993-05-02', 3, 'Иван', 'Кичигин', 'Алексннвич'),
('1995-06-07', 4, 'Роман', 'Гусихин', 'Олегович'),
('1996-07-09', 5, 'Олег', 'Карсаков', 'Алексннвич');
INSERT INTO car (brand, model, color, type_body, years_extract) 
VALUES 
(1, 1, 'Синий', 1, 1980),
(2, 2, 'Красный', 2, 1978),
(3, 3, 'Оранжевый', 3, 1990),
(4, 4, 'Жёлтый', 4, 1999),
(5, 5, 'Голубой', 5, 2001);
INSERT INTO repair (car, date, problem_report, status) 
VALUES 
(1, '2025-03-22', 'Неисправнфе тормаза', 1),
(2, '2025-04-12', 'Не заводится двигатель', 2),
(3, '2025-03-05', 'Замена тормозных колодок', 3),
(4, '2025-02-28', 'Проблемы с электроникой', 4),
(5, '2025-04-15', 'Замена масла', 5);
INSERT INTO renovates (car_mechanic, repair) VALUES (1, 1), (2, 2), (3, 3), (4, 4), (5, 5);
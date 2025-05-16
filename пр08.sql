INSERT INTO level (number_level) VALUES (1), (2), (3), (2), (1);
INSERT INTO status_job (repair_job) 
VALUES ('Выполнено'), ('В процессе'), ('Отложено'), ('Не начато'), ('Проблемы');
INSERT INTO brand (name) 
VALUES ('Audi'), ('BMW'), ('Mercedes'), ('Lada'), ('Kia');
INSERT INTO type_body (description) 
VALUES ('Седан'), ('Купе'), ('Хетчбек'), ('Лифтбек'), ('Универсал');
INSERT INTO model (title, brand) 
VALUES ('A8', 1), ('M5 F90', 2), ('A-45 AMG', 3), ('Granta', 4), ('Ceed', 5);
INSERT INTO car_mechanic (date_of_birth, level, last_name, first_name, third_name) 
VALUES 
('1990-02-01', 1, 'Иван', 'Иванов', 'Иванович'),
('1991-01-03', 2, 'Антон', 'Летаев', 'Анатольевич'),
('1993-05-02', 3, 'Роман', 'Валентинов', 'Константинович'),
('1995-06-07', 4, 'Никита', 'Варинов', 'Олегович'),
('1996-07-09', 5, 'Олег', 'Керанов', 'Алексеевич');
INSERT INTO car (brand, model, color, type_body, years_extract) 
VALUES 
(1, 1, 'Серый', 1, 1980),
(2, 2, 'Красный', 2, 1978),
(3, 3, 'Чёрный', 3, 1990),
(4, 4, 'Белый', 4, 1999),
(5, 5, 'Жёлтый', 5, 2001);
INSERT INTO repair (car, date, problem_report, status) 
VALUES 
(1, '2025-03-22', 'Замена масла', 1),
(2, '2025-04-12', 'Неисправные тормоза', 2),
(3, '2025-03-05', 'Нет света на передних фарах', 3),
(4, '2025-02-28', 'Замена лобового стекла', 4),
(5, '2025-04-15', 'Полное ТО', 5);
INSERT INTO renovates (car_mechanic, repair) VALUES (1, 1), (2, 2), (3, 3), (4, 4), (5, 5);
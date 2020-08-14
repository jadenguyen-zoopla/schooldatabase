CREATE TABLE students(
id int primary key, 
name varchar(255), 
school_house varchar(255), 
email varchar(255), 
start_year int(12),
house_id int,
CONSTRAINT student_to_house FOREIGN KEY (house_id) REFERENCES house(id)
);

CREATE TABLE house(
id int primary key,
house varchar(255),
head_of_house varchar(255),
house_points int
);

INSERT INTO students(id, name, school_house, email, start_year, house_id)
VALUES
(1, 'Dag Wackley', 'blue', 'dwackley0@deviantart.com', '2016'),
(2, 'Nettie Keymer', 'blue', 'nkeymer1@phoca.cz', '2017'),
(3, 'Chane Barbrick', 'yellow', 'cbarbrick2@geocities.com', '2016'),
(4, 'Herc Uc', 'green', 'huc3@accuweather.com', '2013'),
(5, 'Valentine Bril', 'blue', 'vbril4@amazon.co.jp', '2019'),

INSERT INTO house(id, house, head_of_house, house_points)
VALUES
(2, 'blue', 'nkeymer1@phoca.cz', '2017'),
(4, 'green', 'huc3@accuweather.com', '2013'),
(5, 'blue', 'vbril4@amazon.co.jp', '2019'),
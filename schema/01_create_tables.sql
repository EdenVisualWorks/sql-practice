CREATE TABLE movies(
movie_ID AUTO_INCREMENT PRIMARY KEY,
title TEXT UNIQUE,
duration_in_minutes INT NOT NULL,
release_date DATE,
rating DECIMAL
);

CREATE TABLE screenings(
screening_id INT PRIMARY KEY,  
FOREIGN KEY (screening_id) REFERENCES movies(movie_ID)
start_time TIME,
hall_number INT CHECK (hall_number > 0),
ticket_price DOUBLE
);
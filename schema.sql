DROP DATABASE sctips;
CREATE DATABASE sctips;
USE sctips;

CREATE TABLE tips (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    tip VARCHAR(255) UNIQUE NOT NULL
);

INSERT INTO tips(tip) VALUES
("Look at pictures from Old Friends Senior Dog Sanctuary on Facebook"),
("Light some candles. Enjoy the nice scent and warm light"),
("Take a nap, you deserve it"),
("Take a bath with nice-smelling soaps. Bring a book in with you or just be alone for a bit"),
("Tidy your room, maybe you'll find something you lost"),
("Fuel your brain and have a healthy snack"),
("Go for a walk, alone or with a friend"),
("Spend some time with your pet"),
("Don't forget to take your meds!"),
("Do some gardening or tend your houseplants"),
("Try a creative activity, maybe something mellow like embroidery?"),
("Try a soothing face mask"),
("Don't forget to brush your teeth!"),
("Browse your favorite blog for a bit"),
("Make a cup of tea, add your favorite ingredients like milk or honey");




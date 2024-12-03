CREATE TABLE CUSTOMER(
	CUSTOMER_ID int primary key not null,
    CUSTOMER_NAME varchar(45) not null,
    CUSTOMER_CONTACT varchar(45) not null,
    PRICE_TIER tinyint not null
);

INSERT INTO CUSTOMER(CUSTOMER_ID, CUSTOMER_NAME, CUSTOMER_CONTACT, PRICE_TIER)
VALUES
(1, 'Customer Square 1', 'custsquare1@gmail.com', 1),
(2, 'Customer Square 2', 'custsquare2@gmail.com', 1),
(3, 'Customer Square 3', 'custsquare33@yahoo.com', 1),
(4, 'Comedor', 'comedorLLC@hotmail.com', 2),
(5, 'Seven Grand', 'seven7Grand@gmail.com',3),
(6, 'Kemuri', 'kemuribusiness@kemuri.com', 3),
(7, 'Moonshine Patio Bar & Grill', 'moonshineLLC@moon.com',2),
(8, 'Small Victory', 'smallVictory@gmail.com', 3),
(9, 'Pershing', 'pershingLLC@persh', 2),
(10, 'Tiki Tatsu-Ya', 'Tikitatsuya@tiki.com',3),
(11, 'Small Victory', 'SmallVictoryinc@gmail.com', 2),
(12, 'Sourced Cocktail', 'srccocktail@gmail.com', 2),
(13, 'Hestia/Kalimotxo', 'hestiaLLC@gmail.com',2),
(14, 'Canje', 'Canjebusiness@canje.com', 2),
(15, 'Prohibition ATX', 'prohibitionatx@yahoo.com', 2),
(16, 'Outer Heaven', 'outerHaven1@gmail.com', 3),
(17, 'Roosevelt Room', 'rooseveltroomLLC@room.com', 2),
(18, "Whisler's", 'whislers@whislerscomp.com', 2),
(19, 'Dropkick Cocktail Bar & Kitchen', 'dropkickbar@gmail.com', 3),
(20, 'Old Thousand', 'oldthousandLLC@gmail.com', 2),
(21, 'Nickel City', 'nickelCityLLC@city.com', 3),
(22, 'The Carpenter Hotel', 'carpenterHotel@gmail.com', 3),
(23, 'Little Brother Bar', 'LBB@gmail.com', 2),
(24, 'Juliet 2 North','Juliet2North@gmail.com',2),
(25, "Mi Madre's", 'MiMadresLLC@gmail.com', 3);




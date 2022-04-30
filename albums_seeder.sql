#   We are going to be using codeup_test_db
USE codeup_test_db;

#   this is going to show us the columns of the table albums;
describe albums;
#   Doing this shows that there is nothing in the album tables
select * from albums;

#   Use a single INSERT statement for all the records from Wiki with 30 million in sales.
#   Note that running the albums_seeder.sql multiple times will generate duplicate data,
#   don't worry about that for now
INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES
    ('michael jackson', 'thriller', 1982, 49200000, 'pop'),
    ('AC/DC', 'back in black', 1980,29500000,'rock'),
    ('whitney houston', 'the bodyguard',1992,32400000,'R&B'),
    ('meat loaf', 'bat out of hell', 1977, 21700000, 'rock'),
    ('eagles', 'their greatest hits', 1922, 41200000, 'rock'),
    ('pink floyd', ' the dark side of the moon', 1973, 24400000, 'rock'),
    ('eagles', 'Hotel California', 1976, 31500000, 'rock'),
    ('bees gees',' saturday night fever', 1977, 21600000, 'disco'),
    ('fleetwood mac', 'rumours', 1977, 27900000,'rock'),
    ('shania twain', 'come on over', 1997,29600000,'pop'),
    ('led zeppelin ','led zeppelin iv', 1971, 14400000, 'rock'),
    ('michael jackson', 'bad',1987, 21100000, 'pop' ),
    ('alanis morissette', 'jagged little pill', 1995, 24300000, 'alternative'),
    ('michael jackson', 'dangerous', 1991, 17000000, 'pop '),
    ('celine dion', 'falling into you', 1996, 21100000, 'pop'),
    ('the beatles', 'sgt. peppers lonely hearts club band', 1967,18200000,'rock'),
    ('elton john', 'goodbye yellow brick road', 1973, 85000000, 'rock'),
    ('guns n roses', 'appetite for destruction', 1987, 21900000, 'rock'),
    ('santana', 'supernatural', 1999, 20500000, 'rock'),
    ('nirvana', 'nevermind', 1991, 16700000, 'rock'),
    ('dire straits', 'brothers in arms', 1985, 17700000, 'rock'),
    ('james horner', 'titanic', 1997, 18100000, 'film score'),
    ('pink floyd', 'the wall', 1979, 18700000, 'rock'),
    ('madonna', 'the immaculate collection', 1990, 19500000, 'pop'),
    ('bruce springsteen', 'born in the usa', 1984, 19600000, 'rock'),
    ('abba', 'gold: greatest hits', 1992, 23000000, 'pop'),
    ('the beatles', 'abbey road', 1969, 14400000, 'rock'),
    ('metallica', 'metallica', 1991, 25200000, 'metal'),
    ('celine dion', 'lets talk about love', 1997, 19300000, 'pop'),
    ('adele', '21', 2011, 26400000, 'pop'),
    ('various artists', 'dirty dancing', 1987, 179000000, 'pop');

#   Doing this shows that the values have been added to the table;
select * from albums;


####    Basic Statements - Add a TRUNCATE to delete all records from the table
TRUNCATE  albums;
###     now its clear- restart
SELECT * FROM albums;
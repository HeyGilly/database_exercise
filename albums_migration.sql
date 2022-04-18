
#Create a database if it is not created
Create database if not exists blog_app;


USE codeup_test_db;

Drop table if exists albums;

create table if not exists albums(
    id INT unsigned not null auto_increment,
    artist VARCHAR(50) not null,
    name varchar(75) not null,
    release_date INT,
    sales float,
    genre char(250),
    primary key (id)
);

describe albums;

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Mac Miller', 'Blue Slide Park', 2011, 29.99, 'Hip Hop');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Ye', 'My Beautiful Dark Twisted Fantasy', 2010, 49.99, 'Rap');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Dr. Dre', 'The Chronic', 1992, 49.99, 'Rap, G-Funk');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Draft Punk', 'Random Access Memories', 2013, 25.99, 'Electronic, House');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Michael Jackson', 'Thiller', 1982, 29.99, 'Pop, Rock, Post-Disco');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES  ('Fleetwood Mac', 'Rumours', 1977, 25.99, 'Pop, Rock, Soft Rock'),
        ('The B-52s', 'The B-52\'s', 1979, 19.99, 'Pop, Punk'),
        ('Backstreet Boys', 'Millenium', 1999, 22.99, 'Pop, Rock'),
        ('George Michael', 'Faith', 1987, 25.99, 'Pop, Rock, Dance');


select * from albums where release_date > 1995;

select * from albums where sales between 10.00 and 30.00;

# delete from albums;
# truncate albums;
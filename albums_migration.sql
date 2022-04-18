
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
    genre char(200),
    primary key (id)
);

describe albums;

# Show Create Table albums
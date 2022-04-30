#   Since virtually all MySQL information is stored within a database,
#   it can be convenient to switch to a particular database.
#   here we are telling the computer that we are going to be using the data in that database
USE codeup_test_db;

#   Going to start fresh
#   Write some SQL to drop a table named albums if it exists.
DROP TABLE IF EXISTS albums;


#Create an albums table
create table if not exists albums(
    id INT unsigned not null auto_increment primary key ,
    artist VARCHAR(50) not null,
    name varchar(75) not null,
    release_date INT,
    sales float,
    genre char(250)
);

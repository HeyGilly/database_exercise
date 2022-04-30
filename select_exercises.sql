#   Since virtually all MySQL information is stored within a database,
#   it can be convenient to switch to a particular database.
#   here we are telling the computer that we are going to be using the data in that database
USE codeup_test_db;

# Remeber this is the whole table with data that was inputed from the albums_seeder.sql
SELECT * FROM albums;

# 3.1 - Find The name of all albums by Pink Floyd.
select * from albums where artist = 'pink floyd';


#3.2 - The year Sgt. Pepper's Lonely Hearts Club Band was released
select release_date from albums where name = 'sgt. peppers lonely hearts club band';

#3.3 - Find The genre for Nevermind
select genre from albums where name = 'nevermind';

#3.4 - Find which albums were released in the 1990s
select * from albums where release_date between 1990 and 1999;

#3.5 - Find which albums had less than 20 million certified sales
select * from albums where sales <= 20000000;


#3.6 - All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
# it is because you have to be precise


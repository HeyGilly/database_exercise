USE codeup_test_db;

# 4.a - output Albums released after 1991
SELECT artist AS Albums_released_after_1991 FROM albums WHERE release_date > 1991;

#4.b - output Albums with the genre 'disco'
SELECT  artist as Artist, name as Album_Name FROM albums WHERE genre = 'disco';

#4.c - output Albums by Whitney Houston or any artist.
SELECT artist as Artist, name as Album_Name from albums where artist = 'nirvana';

#5 - Make sure to put appropriate captions before each SELECT.
# { Check }

# Transfer select into delete

# SELECT artist AS Albums_released_after_1991 FROM albums WHERE release_date > 1991;
DELETE FROM albums WHERE release_date > 1991;
# SELECT  artist as Artist, name as Album_Name FROM albums WHERE genre = 'disco';
DELETE FROM albums WHERE genre = 'disco';
# SELECT artist as Artist, name as Album_Name from albums where artist = 'nirvana';
DELETE FROM albums WHERE artist ='nirvana';



## Now run the code up top and you shall see that the data is deleted.
#Pull data first
USE codeup_test_db;
#2.a - output all albums in the table
SELECT * FROM albums;
#2.b - output all albums release before 1980
SELECT * FROM ALBUMS WHERE release_date < 1980;
#2.C - output all albums by Michael Jackson
SELECT * FROM albums WHERE artist = 'Michael Jackson';
# need to change artist name to 'Michael Jackson'.
# Currently its 'micheal jackson'
UPDATE albums set artist = 'Michael Jackson' where artist = 'micheal jackson';
#now if we check again we will see the new results from the updated table.
#   Its exactly the same from line 11
SELECT * FROM albums WHERE artist = 'Michael Jackson';

#3.1 - Make all the albums 10 times more popular (sales * 10)
update albums set sales = sales * 10;
select * from albums;

#3.2 - Move all the albums before 1980 back to the 1800s.
update albums set release_date = release_date - 100 where release_date < 1980;
select * from albums where release_date < 1980;

#3.3 - Change 'Michael Jackson' to 'Peter Jackson'
update albums set artist = 'Peter Pan' where artist = 'Michael Jackson';
select * from albums where artist = 'Peter Pan';

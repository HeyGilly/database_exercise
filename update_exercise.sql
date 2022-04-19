use codeup_test_db;

# 2.1
select * from albums;
# 2.2
select * from albums where release_date < 1980;
# 2.3
select * from albums where artist = 'Michael Jackson';
# had to update the artist and then run the search again.
update albums set artist = 'Michael Jackson' where id =74;
update albums set artist = 'Michael Jackson' where id =76;
update albums set artist = 'Michael Jackson' where id =63;
select * from albums where artist = 'Michael Jackson';

#3.1
update albums set sales = sales * 10;
select * from albums;
#3.2
update albums set release_date = release_date - 100 where release_date < 1980;;
select * from albums where release_date < 1980;
#3.3
update albums set artist = 'Peter Pan' where artist = 'Michael Jackson';
select * from albums where artist = 'Peter Pan';


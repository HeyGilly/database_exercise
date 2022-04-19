use codeup_test_db;

#4.1
delete from albums where release_date >= 1991;
#4.2
delete from albums where genre = 'disco';
#4.3
delete from albums where artist = 'whitney houston';

select * from albums;

select *
from albums where artist = 'whitney houston';
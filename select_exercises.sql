# 2
use codeup_test_db;

# 3.1
select * from albums where artist = 'pink floyd';

#3.2
select release_date from albums where name = 'sgt. peppers lonely hearts club band';

#3.3
select genre from albums where id = 82;

#3.4
select * from albums where release_date between 1990 and 1999;

#3.5
select * from albums where sales <= 20000000;

#3.6
# it is because you have to be precise


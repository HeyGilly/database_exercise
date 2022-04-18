Create database if not exists blog_app;
#pluralizing the name of the table;
use blog_app;
# Creating a table

create table users (
    #intenger, unsigned , NOT SIGNED, no negative values
    id INT unsigned not null auto_increment,
    name VARCHAR(50),
    email VARCHAR(100),
    job_title VARCHAR(50),
    location VARCHAR(100),
    address VARCHAR(200),
    creation_date TIMESTAMP DEFAULT current_timestamp(),
    PRIMARY KEY (id)
);

create table if not exists posts (
    id INT unsigned NOT NULL auto_increment,
    user_id INT NOT NUll,
    title VARCHAR(100),
    labels VARCHAR(200),
    body text,
    primary key(id)
);

create table if not exists posts_label(
    post_id INT unsigned not null,
    label_id int unsigned not null
);

create table if not exists labels (
     id INT unsigned not null auto_increment,
    # only characters 25 max not to be empty or null
    name Char(25) not null,
    primary key (id)
);

insert into users (name, email,job_title, address)
values ('bobby smith', 'Fakeemail@eoolg.com', 'software developer', '123 fake lane st, Texas, San Antonio');

insert into posts (user_id, title, body)
values (1, 'My first post', 'lost of text and stuff here');

insert into labels (name) values ('Awsome');
insert into labels (name) values ('The Worst');
insert into labels (name) values ('OK');

insert into posts_label (post_id, label_id)  values (1,1);
insert into posts_label (post_id, label_id)  values (1,2);
insert into posts_label (post_id, label_id)  values (1,3);

select l.post_id, p.user_id from posts_label l
inner join posts p on (p.id = l)
where post_id = 1;
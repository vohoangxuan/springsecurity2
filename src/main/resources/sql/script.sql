create table users(username varchar(50) not null primary key,password varchar(500) not null,enabled boolean not null);
create table authorities (username varchar(50) not null,authority varchar(50) not null,constraint fk_authorities_users foreign key(username) references users(username));
create unique index ix_auth_username on authorities (username,authority);create table users(username varchar(50) not null primary key,password varchar(500) not null,enabled boolean not null);
create table authorities (username varchar(50) not null,authority varchar(50) not null,constraint fk_authorities_users foreign key(username) references users(username));
create unique index ix_auth_username on authorities (username,authority);


insert into users values ('user', 'SapTet@2024', '1');
insert into authorities values ('user', 'read');

insert into users values ('admin', '$2a$12$5ss4S9OVbCgQrgFec8EAtOthR88LeSnUZEe1kEAQA/iqYwOQECShe', '1');
insert into authorities values ('admin', 'admin');
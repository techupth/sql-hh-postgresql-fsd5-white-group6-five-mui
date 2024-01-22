-- Start writing code here
create table users(
user_id int primary key generated always as identity,
username varchar (255) unique not null,
email varchar (255) unique not null,
password varchar (255) not null,
create_at timestamptz unique not null
);

create table products(
product_id int primary key generated always as identity,
name varchar (255) unique not null,
description text,
price numeric (10,2) not null,
create_at timestamptz unique not null
);

create table categories(
category_id int primary key generated always as identity,
name varchar (255) unique not null,
create_at timestamptz unique not null
);

create table product_categories(
product_categories_id int primary key generated always as identity,
product_id int references products(product_id) on delete cascade,
category_id int references categories(category_id) on delete cascade
);
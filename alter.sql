-- Active: 1743216657176@@127.0.0.1@5432@user1
SELECT * from person;

-- add column 
ALTER Table person 
ADD COLUMN email VARCHAR(25) DEFAULT 'default@gmail.com' NOT NULL;

-- drop column 
ALTER Table person 
DROP COLUMN email;

-- rename column 
ALTER TABLE person
RENAME COLUMN user_age to age;

-- varchar column change
ALTER Table person
alter COLUMN user_name type VARCHAR(50);

-- column constrain add 
ALTER TABLE person
    alter COLUMN age set NOT NULL;

-- column constrain remove
ALTER TABLE person
    alter COLUMN age drop NOT NULL;


-- 49-3 Different Methods to Alter Tables For Primary key, Unique etc


-- add Unique kye:
ALTER Table person
add constraint unique_age_person UNIQUE(age);

-- delete or drop Unique kye:


-- add Primary kye:

-- delete or drop Primary kye:





-- add row 
INSERT into person values (4,'test',20,'test@gmail.com');
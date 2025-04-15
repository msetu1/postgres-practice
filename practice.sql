CREATE TABLE "user"(
    id SERIAL PRIMARY KEY,
    username VARCHAR(25)NOT NULL
)

CREATE TABLE post(
    id SERIAL PRIMARY KEY,
    title text not NULL,
    user_id INTEGER REFERENCES "user"(id)
)

insert INTO "user"(username) VALUES 
('akash'),
('batash'),
('sagor'),
('nodi');

INSERT INTO post(title,user_id) VALUES ('How to Build a REST API with Node.js', 1),
('Top 10 Tips for Mastering React', 2),
('Beginner’s Guide to SQL Joins', 3),
('Understanding Flexbox in CSS', 4);

DROP Table post;
DROP Table "user";

SELECT * FROM "user";
SELECT *FROM post;

SELECT *FROM post
JOIN "user" on post.user_id="user".id;

INSERT INTO post(id,title,user_id) VALUES (5,'change a text', NULL);

SELECT *FROM post
LEFT JOIN "user" on post.user_id="user".id;

SELECT *FROM post
RIGHT JOIN "user" on post.user_id="user".id;
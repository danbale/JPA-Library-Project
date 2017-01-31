CREATE TABLE book (
book_id INTEGER NOT NULL, 
book_name VARCHAR(60), 
book_genre VARCHAR(30),
book_author VARCHAR(30),
book_editor VARCHAR(30),
book_lng VARCHAR(30),
book_status VARCHAR(20),
book_year INTEGER,
PRIMARY KEY (book_id)
);

CREATE TABLE user (
user_id INTEGER NOT NULL,
user_username VARCHAR(30),
user_password VARCHAR(30),
user_name VARCHAR(30),
created_date DATE,
modified_date DATE,
PRIMARY KEY (user_id)	
);

CREATE TABLE book_order (
book_order_id INTEGER NOT NULL,
user_id INTEGER NOT NULL,
created_date DATE,
modified_date DATE,
PRIMARY KEY (book_order_id),
CONSTRAINT fk_user_book_order
FOREIGN KEY (user_id) 
REFERENCES user(user_id)
);


CREATE TABLE pick_book(
pick_book_id INTEGER NOT NULL,
user_id INTEGER NOT NULL,
book_order_id INTEGER NOT NULL,
created_date DATE,
modified_date DATE,
PRIMARY KEY (pick_book_id),
CONSTRAINT fk_user_pick_book
FOREIGN KEY (user_id) 
REFERENCES user(user_id),
CONSTRAINT fk_book_order_pick_book
FOREIGN KEY (book_order_id) 
REFERENCES book_order(book_order_id)
);
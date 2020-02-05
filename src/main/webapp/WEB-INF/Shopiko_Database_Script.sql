DROP DATABASE IF EXISTS shopiko;
CREATE DATABASE shopiko;

USE shopiko;


CREATE TABLE role(
	id				 INT NOT NULL,
    title			 VARCHAR(20) NOT NULL,
    description 	 TEXT NOT NULL,
    created_date  	 DATE NOT NULL,
    
    CONSTRAINT user_PK 			PRIMARY KEY (id),
    CONSTRAINT role_title_UNIQE UNIQUE (title)
);

CREATE TRIGGER role_before_insert_TRIGGER BEFORE INSERT ON role FOR EACH ROW SET NEW.created_date = CURRENT_DATE();

CREATE TABLE user(
	id 				INT AUTO_INCREMENT NOT NULL,
    email 			VARCHAR(50) NOT NULL,
    password	    VARCHAR(20) NOT NULL,
    first_name 		VARCHAR(20) NOT NULL,
    last_name  		VARCHAR(20) NOT NULL,
    role_id	   		INT NOT NULL DEFAULT 2,
    join_date  		DATE NOT NULL,
    
    CONSTRAINT user_PK 			PRIMARY KEY (id),
    CONSTRAINT user_email_UNIQE UNIQUE (email),
    CONSTRAINT user_role_FK 	FOREIGN KEY (role_id) REFERENCES role(id) ON DELETE NO ACTION
);

CREATE TRIGGER user_before_insert_TRIGGER BEFORE INSERT ON user FOR EACH ROW SET NEW.join_date = CURRENT_DATE();

INSERT INTO role (id,title,description) VALUES(1,"Admin","Admin Role So You Can Do Any Thing As Admin"),(2,"User","Normal User");

INSERT INTO user (email,first_name,last_name,password) VALUES ("abc@gmail.com","Ahmed","Galal",12345);

SELECT * FROM role;
SELECT * FROM user;
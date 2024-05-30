CREATE DATABASE quotes CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
use quotes;

CREATE TABLE user (
  id BIGINT AUTO_INCREMENT
, account VARCHAR(50) UNIQUE
, password VARCHAR (128)
, CONSTRAINT pkUser PRIMARY KEY (id)
);

INSERT INTO user (account, password) 
VALUES 
('cardosojmz',sha2('c4rdOsojmz',512)),
('rosal',sha2('r0s4l',512)),
('liz',sha2('l1z',512));

GRANT ALL PRIVILEGES ON quotes.* TO devDeno@'localhost' IDENTIFIED BY 't0ps3cr3t';
GRANT ALL PRIVILEGES ON quotes.* TO devDeno@'%' IDENTIFIED BY 't0ps3cr3t';
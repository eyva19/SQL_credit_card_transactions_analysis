DROP TABLE IF EXISTS card_holder CASCADE;
DROP TABLE IF EXISTS credit_card CASCADE;
DROP TABLE IF EXISTS merchant_category CASCADE;
DROP TABLE IF EXISTS merchant CASCADE;
DROP TABLE IF EXISTS transaction CASCADE;

-- Create card_holder table
CREATE TABLE card_holder (
  id INT PRIMARY KEY NOT NULL,
  name VARCHAR(255)
);

-- Create credit_card table
CREATE TABLE credit_card (
  card VARCHAR(20) PRIMARY KEY NOT NULL,
  cardholder_id INT,
  FOREIGN KEY (cardholder_id) REFERENCES card_holder(id)
);

-- Create merchant_category table
CREATE TABLE merchant_category (
  id INT PRIMARY KEY NOT NULL,
  name VARCHAR(255)
);

-- Create merchant table
CREATE TABLE merchant (
  id INT PRIMARY KEY NOT NULL,
  name VARCHAR(255),
  id_merchant_category INT,
  FOREIGN KEY (id_merchant_category) REFERENCES merchant_category(id)
);

-- Create transaction table
CREATE TABLE transaction (
  id INT PRIMARY KEY NOT NULL,
  date timestamp,
  amount DECIMAL,
  card VARCHAR(20),
  FOREIGN KEY (card) REFERENCES credit_card(card),
  id_merchant INT,
  FOREIGN KEY (id_merchant) REFERENCES merchant(id)
);

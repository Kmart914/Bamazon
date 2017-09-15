USE bamazon_DB;

CREATE TABLE products (
  item_id INT AUTO_INCREMENT  NOT NULL,
  product VARCHAR(32) NOT NULL,
  department VARCHAR(32) NOT NULL,
  price DECIMAL(10,4) NOT NULL,
  stock_qty INT(10) NOT NULL,
  PRIMARY KEY(item_id)
);

INSERT INTO products (product, department, price, stock_qty)
VALUES ("Laptop", "Electronics", 799.99, 10);

INSERT INTO products (product, department, price, stock_qty)
VALUES ("Nike Shoes", "Clothing", 29.99, 5);

INSERT INTO products (product, department, price, stock_qty)
VALUES ("Hydro Flask", "Sporting Goods", 39.99, 10);

INSERT INTO products (product, department, price, stock_qty)
VALUES ("Nerf Gun", "Toys", 19.99, 5);

INSERT INTO products (product, department, price, stock_qty)
VALUES ("Basketball", "Sporting Goods", 49.99, 2);

INSERT INTO products (product, department, price, stock_qty)
VALUES ("Computer Chair", "Furniture", 69.99, 1);

INSERT INTO products (product, department, price, stock_qty)
VALUES ("Pens", "Office Supplies", 4.99, 25);

INSERT INTO products (product, department, price, stock_qty)
VALUES ("Headphones", "Electronics", 199.99, 4);

INSERT INTO products (product, department, price, stock_qty)
VALUES ("Book", "Books", 19.99, 3);

INSERT INTO products (product, department, price, stock_qty)
VALUES ("Ping Pong Table", "Sporting Goods", 299.99, 5);

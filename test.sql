CREATE DATABASE TESTING;
USE TESTING;
CREATE TABLE orders_fk_test (
  Id int(11) NOT NULL auto_increment,
  OrderDate datetime default NULL,
  CustomerId int(11) default NULL,
  PRIMARY KEY  (Id)
) ENGINE=InnoDB;
CREATE TABLE items_fk_test (
  Id int(11) NOT NULL auto_increment,
  Name varchar(255) default NULL,
  Price decimal(10,2) default NULL,
  PRIMARY KEY  (Id)
) ENGINE=InnoDB;
CREATE TABLE orderitems_fk_test (
  Id int(11) NOT NULL auto_increment,
  OrderId int(11) default NULL,
  ItemId int(11) default NULL,
  Quantity int(11) default NULL,
  PRIMARY KEY  (Id),
  CONSTRAINT fk_test_orderitems_items FOREIGN KEY (ItemId) REFERENCES items_fk_test(Id),
  CONSTRAINT fk_test_orderitems_orders FOREIGN KEY (OrderId) REFERENCES orders_fk_test(Id)
) ENGINE=InnoDB;
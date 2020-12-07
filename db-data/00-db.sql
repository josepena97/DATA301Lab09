CREATE DATABASE tpch;
CREATE USER 'tpch'@'%' IDENTIFIED BY 'tpch';
GRANT ALL ON `tpch`.* TO 'tpch'@'%' ;

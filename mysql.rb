#!/usr/local/bin/ruby

require 'mysql'

mysql = Mysql.init();
mysql.real_connect("localhost", "root", "mysql", "sfdc",3306,"/var/lib/mysql/mysql.sock");
mysql.select_db('sfdc');

mysql.query("DROP TABLE IF EXISTS rocks");

mysql.query("CREATE TABLE rocks (id INT UNSIGNED NOT NULL AUTO_INCREMENT, PRIMARY KEY (id), rockname CHAR(20) NOT NULL);")

mysql.query("INSERT INTO rocks (rockname) values('Granite');")
mysql.query("INSERT INTO rocks (rockname) values('Coal');")
mysql.query("INSERT INTO rocks (rockname) values('Quartz');")

results = mysql.query("SELECT now();")
results.each{|row|; puts row;}
results = mysql.query("SELECT * from rocks;")
results.each{|row|; puts row;}

mysql.close()

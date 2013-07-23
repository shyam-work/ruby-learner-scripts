#!/usr/local/bin/ruby

require 'pg'

conn = PG::Connection.open(:dbname => 'sfdc', :user => 'sfdc')
PG = conn;
results = PG.query("SELECT now();")
results.each{|row|; puts row;}

PG.query("DROP TABLE IF EXISTS rocks");
#PG.query("CREATE SEQUENCE rank_id_seq;");

#PG.query("CREATE TABLE rocks (id INT NOT NULL default nextval('rank_id_seq'), rockname CHAR(20) NOT NULL);")
PG.query("CREATE TABLE rocks (id serial primary key, rockname CHAR(20) NOT NULL);")

PG.exec("INSERT INTO rocks (rockname) values('Granite');")
PG.exec("INSERT INTO rocks (rockname) values('Coal');")
PG.exec("INSERT INTO rocks (rockname) values('Quartz');")

results = PG.query("SELECT * from rocks;")
results.each{|row|; puts row;}

PG.close()

#!/usr/bin/python
# -*- coding: UTF-8 -*-

import MySQLdb

# connect the remote mysql
db = MySQLdb.connect("192.168.178.1","root","123456","bap" )

# 
cursor = db.cursor()

# drop the table
cursor.execute("DROP TABLE IF EXISTS task")
cursor.execute("DROP TABLE IF EXISTS sample")
# create table BAP
sql = """CREATE TABLE task (
         old_sample_num  INT,
         new_sample_num  INT,
         convert_address INT,
         status INT,
         PRIMARY KEY (convert_address)
          )"""

cursor.execute(sql)

sql = """CREATE TABLE sample (
         sample_num  INT,
         status INT,
         PRIMARY KEY (sample_num)
          )"""
cursor.execute(sql)

# initial the BAP table
cursor.execute("INSERT INTO sample(sample_num,status) VALUES(1,0);")
db.commit()

cursor.execute("SELECT * FROM sample")
 
# 
rows = cursor.fetchall()

# 
for row in rows:
    print row
# 
db.close()
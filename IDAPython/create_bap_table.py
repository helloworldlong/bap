#!/usr/bin/python
# -*- coding: UTF-8 -*-

import MySQLdb

# connect the remote mysql
db = MySQLdb.connect("192.168.178.1","root","123456","bap" )

# 
cursor = db.cursor()

# drop the table
cursor.execute("DROP TABLE IF EXISTS task")
cursor.execute("DROP TABLE IF EXISTS status")
# create table BAP
sql = """CREATE TABLE task (
         old_sample_num  INT,
         new_sample_num  INT,
         convert_address INT,
         done INT,
         PRIMARY KEY (convert_address)
          )"""

cursor.execute(sql)
sql = """CREATE TABLE status (
         convert_address  INT,
         convert_status  INT,
         PRIMARY KEY (convert_address, convert_status)
          )"""
cursor.execute(sql)
# initial the BAP table
cursor.execute("INSERT INTO task(old_sample_num,new_sample_num,convert_address,done) VALUES(1,0,0,0);")
db.commit()

cursor.execute("SELECT * FROM task")
 
# 
rows = cursor.fetchall()

# 
for row in rows:
    print row
# 
db.close()
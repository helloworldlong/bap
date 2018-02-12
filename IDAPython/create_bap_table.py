#!/usr/bin/python
# -*- coding: UTF-8 -*-

import MySQLdb

# connect the remote mysql
db = MySQLdb.connect("192.168.178.1","root","123456","bap" )

# 
cursor = db.cursor()

# drop the table
cursor.execute("DROP TABLE IF EXISTS BAP")

# create table BAP
sql = """CREATE TABLE BAP (
         old_sample_num  INT,
         new_sample_num  INT,
         convert_address INT  
          )"""

cursor.execute(sql)

# initial the BAP table
cursor.execute("INSERT INTO BAP(old_sample_num,new_sample_num,convert_address) VALUES(1,2,0x1a)")
db.commit()

cursor.execute("SELECT * FROM BAP")
 
# 
rows = cursor.fetchall()

# 
for row in rows:
    print row
# 
db.close()
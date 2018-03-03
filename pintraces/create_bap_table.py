#!/usr/bin/python
# -*- coding: UTF-8 -*-

import MySQLdb
mysql_server_ip='172.16.155.1' #mac vmnet ip
# connect the remote mysql
db = MySQLdb.connect(mysql_server_ip,"root","123456","bap" )

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
         convert_serial_num INT,
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
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
         old_sample_num  INT(32) UNSIGNED,
         new_sample_num  INT(32) UNSIGNED,
         convert_address INT(32) UNSIGNED,
         convert_serial_num INT(32) UNSIGNED,
         line_num INT(32) UNSIGNED,
         status INT(32) UNSIGNED
          )"""

cursor.execute(sql)
sql='''
ALTER TABLE task
ADD UNIQUE KEY(old_sample_num,convert_serial_num);
'''
cursor.execute(sql)
sql = """CREATE TABLE sample (
         sample_num  INT(32) UNSIGNED,
         status INT(32) UNSIGNED,
         serial_num_convert INT(32) UNSIGNED,
         UNIQUE KEY (sample_num)
          )"""
cursor.execute(sql)

# initial the BAP table
cursor.execute("INSERT INTO sample(sample_num,status) VALUES(1,0,0);")
db.commit()

cursor.execute("SELECT * FROM sample")
 
# 
rows = cursor.fetchall()

# 
for row in rows:
    print row
# 
db.close()
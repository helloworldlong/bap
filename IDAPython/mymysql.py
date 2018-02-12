#!/usr/bin/python
# -*- coding: UTF-8 -*-

import MySQLdb

# 打开数据库连接
db = MySQLdb.connect("192.168.178.1","root","123456","mysql" )

# 使用cursor()方法获取操作游标 
cursor = db.cursor()

# 如果数据表已经存在使用 execute() 方法删除表。
cursor.execute("DROP TABLE IF EXISTS BAP")

# 创建数据表SQL语句
sql = """CREATE TABLE BAP (
         old_sample_num  INT,
         new_sample_num  INT,
         convert_address INT,  
          )"""

cursor.execute(sql)

# 关闭数据库连接
db.close()
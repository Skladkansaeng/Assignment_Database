from app import app
from flaskext.mysql import MySQL
from flask import jsonify
import pymysql

mysql = MySQL()
 
# MySQL configurations
app.config['MYSQL_DATABASE_USER'] = 'root'
app.config['MYSQL_DATABASE_PASSWORD'] = ''
app.config['MYSQL_DATABASE_DB'] = 'bkladkansaeng_Test'
app.config['MYSQL_DATABASE_HOST'] = 'localhost'
mysql.init_app(app)

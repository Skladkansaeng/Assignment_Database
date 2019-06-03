import pymysql
from app import app
from db_config import mysql
from flask import jsonify
from flask import flash, request
import requests

@app.route('/books/<id>')
def book(id):
    try:
        conn = mysql.connect()
        cursor = conn.cursor(pymysql.cursors.DictCursor)
        cursor.execute("SELECT * FROM BOOK WHERE BOOK_ID = %s",id)
        rows = cursor.fetchall()
        resp = jsonify(rows)
        resp.status_code = 200
        return resp
    except Exception as e:
        print(e)
    finally:
        cursor.close() 
        conn.close()

@app.route('/borrow/<id>')
def check_borrow(id):
    try:
        conn = mysql.connect()
        cursor = conn.cursor(pymysql.cursors.DictCursor)
        cursor.execute("SELECT * FROM BORROW WHERE MEMBER_ID = %s",id)
        rows = cursor.fetchall()
        resp = jsonify(rows)
        resp.status_code = 200
        return resp
    except Exception as e:
        print(e)
    finally:
        cursor.close() 
        conn.close()
        
@app.route('/books/add',methods=['POST','GET'])
def add_book():
    _json = request.json
    if request.method == 'GET':
        resp = jsonify("Incorrect Method!!")
        resp.status_code = 200
        return resp
    elif request.method == 'POST':
        sql = "INSERT INTO BOOK(BOOK_CATEGORY, BOOK_NAME, BOOK_ISBN,BOOK_AUTHOR,BOOK_PRICE) VALUES(%s,%s, %s,%s,%s)"
        sql_amount = "INSERT INTO BOOK(BOOK_CATEGORY, BOOK_NAME, BOOK_ISBN,BOOK_AUTHOR,BOOK_PRICE,BOOK_AMOUNT) VALUES(%s,%s, %s,%s,%s,%s)"
        _type = _json['type']
        _bookcate = _json['BOOK_CATEGORY']
        _bookname = _json['BOOK_NAME']
        _bookisbn = _json['BOOK_ISBN']
        _bookauthor = _json['BOOK_AUTHOR']
        _bookprice = _json['BOOK_PRICE']
        if _type == 0 :
            conn = mysql.connect()
            cursor = conn.cursor(pymysql.cursors.DictCursor)
            cursor.execute(sql,(_bookcate,_bookname,_bookisbn,_bookauthor,_bookprice))
            conn.commit()
            resp = jsonify("Success!!")
            return resp
        elif _type == 1:
            conn = mysql.connect()
            cursor = conn.cursor(pymysql.cursors.DictCursor)
            cursor.execute(sql_amount,(_bookcate,_bookname,_bookisbn,_bookauthor,_bookprice,_json['BOOK_AMOUNT']))
            conn.commit()
            resp = jsonify("Success!!")
            return resp                  

@app.route('/history/<id>')
def history(id):
        try:
            conn = mysql.connect()
            cursor = conn.cursor(pymysql.cursors.DictCursor)
            cursor.execute("SELECT * FROM BORROW_HISTORY WHERE MEMBER_ID = %s",id)
            rows = cursor.fetchall()
            resp = jsonify(rows)
            resp.status_code = 200
            return resp
        except Exception as e:
            print(e)
        finally:
            cursor.close() 
            conn.close()

@app.route('/search/<word>')
def search(word):
    try:
        conn = mysql.connect()
        cursor = conn.cursor(pymysql.cursors.DictCursor)
        str_sql = "SELECT B.BOOK_NAME,B.BOOK_AMOUNT AS ALLBOOK,B.BOOK_AMOUNT - (SELECT COUNT(*) FROM borrow BR GROUP BY BR.BOOK_ID HAVING BR.BOOK_ID = B.BOOK_ID) AS REMAINING FROM BOOK B WHERE BOOK_NAME LIKE '"+word+"%'"
        # str_sql = "SELECT BOOK_NAME FROM BOOK WHERE BOOK_NAME LIKE '"+ word +"%'"
        cursor.execute(str_sql)
        rows = cursor.fetchall()
        resp = jsonify(rows)
        resp.status_code = 200
        return resp
    except Exception as e:
        print(e)
    finally:
        cursor.close() 
        conn.close()

@app.route('/return',methods=['POST','GET'])
def retrun_book():
    _json = request.json
    _isbn = _json['BOOK_ISBN']
    _member = _json['MEMBER_ID']
    _librarian = _json['LIBRARIAN_ID']
    if request.method == 'POST':
        sql_book =  "SELECT BOOK_ID FROM BOOK WHERE BOOK_ISBN = %s"
        sql_borrow =  "SELECT BORROW_DATE FROM BORROW WHERE BOOK_ID = %s AND MEMBER_ID = %s"
        sql = "INSERT INTO BORROW_HISTORY(MEMBER_ID, BOOK_ID, LIBRARIAN_ID,HISTORY_DATE	) VALUES(%s,%s, %s,%s)"
        sql_delete = "DELETE FROM BORROW WHERE BOOK_ID = %s AND MEMBER_ID = %s"
        sql_timerage = "SELECT RETURN_DATE,HISTORY_DATE,DATEDIFF(RETURN_DATE,HISTORY_DATE) FROM borrow_history WHERE BOOK_ID = %s AND MEMBER_ID = %s"
        conn = mysql.connect()
        cursor = conn.cursor()
        cursor.execute(sql_book,_isbn)
        rows = cursor.fetchall()
        _bookid = rows[0][0]
        cursor.execute(sql_borrow,(_bookid,_member))
        rows = cursor.fetchall()
        _book_date = rows[0][0]
        data = (_member, _bookid, _librarian,_book_date)
        cursor.execute(sql, data)
        conn.commit()
        data = ( _bookid,_member)
        cursor.execute(sql_delete, data)
        conn.commit()
        cursor.execute(sql_timerage, data)
        rows = cursor.fetchall()
        _str = "TIMEDIVV : " + str(rows[0][2])
        resp = jsonify(_str)
        resp.status_code = 200
        return resp

@app.route('/borrow', methods=['POST','GET'])
def borrow():
    state = True
    if request.method == 'POST':
        _json = request.json
        if len(_json) <=2 or len(_json) > 3 :
            resp = jsonify('Data Incorrect!!')
            resp.status_code = 200
            return resp
        else:
            student = requests.get('https://reg.serveo.net/notpay')
            for i in student.json():
                if i['ID'] == _json['MEMBER_ID']:
                    state= False
            if state:
                _member = _json['MEMBER_ID']
                _book = _json['BOOK_ISBN']
                _librarian = _json['LIBRARIAN_ID']
                sql_book =  "SELECT BOOK_ID FROM BOOK WHERE BOOK_ISBN = %s"
                sql = "INSERT INTO BORROW(MEMBER_ID, BOOK_ID, LIBRARIAN_ID) VALUES(%s,%s, %s)"
                conn = mysql.connect()
                cursor = conn.cursor()
                cursor.execute(sql_book,_book)
                rows = cursor.fetchall()
                _book_id = rows[0][0]
                data = (_member, _book_id, _librarian)
                cursor.execute(sql, data)
                conn.commit()
                resp = jsonify('Success!!')
                resp.status_code = 200
                return resp
            else:
                resp = jsonify('No license')
                resp.status_code = 200
                return resp
    elif request.method == 'GET':
        conn = mysql.connect()
        cursor = conn.cursor(pymysql.cursors.DictCursor)
        cursor.execute("SELECT MEMBER_ID FROM borrow GROUP BY MEMBER_ID")
        rows = cursor.fetchall()
        resp = jsonify(rows)
        resp.status_code = 200
        return resp

@app.route('/books/isbn/<id>')
def book_isbn(id):
    try:
        conn = mysql.connect()
        cursor = conn.cursor(pymysql.cursors.DictCursor)
        cursor.execute("SELECT * FROM BOOK WHERE BOOK_ISBN = %s",id)
        rows = cursor.fetchall()
        resp = jsonify(rows)
        resp.status_code = 200
        return resp
    except Exception as e:
        print(e)
    finally:
        cursor.close() 
        conn.close()

@app.route('/remove/isbn/<id>')
def remove_isbn(id):
    try:
        conn = mysql.connect()
        cursor = conn.cursor(pymysql.cursors.DictCursor)
        cursor.execute("DELETE FROM BOOK WHERE BOOK_ISBN = %s",id)
        conn.commit()
        resp = jsonify("Success!!")
        resp.status_code = 200
        return resp
    except Exception as e:
        print(e)
    finally:
        cursor.close() 
        conn.close()

@app.route('/books.json')
def books():
    # data = request.cookies.get("sessionid")
    # if data  != None:
    try:
        conn = mysql.connect()
        cursor = conn.cursor(pymysql.cursors.DictCursor)
        cursor.execute("SELECT * FROM BOOK ")
        rows = cursor.fetchall()
        resp = jsonify(rows)
        resp.status_code = 200
        
        resp.headers.add("Access-Control-Allow-Credentials",'*')
        resp.headers.add("Access-Control-Allow-Origin",'*')
        resp.headers.add("Vary","Origin, Accept-Encoding")
        # resp.headers.add("Content-Type","application/json; charset=utf-8")
        return resp
    except Exception as e:
        print(e)
    finally:
        cursor.close() 
        conn.close()
	
@app.errorhandler(404)
def not_found(error=None):
    message = {
        'status': 404,
        'message': 'Not Found: ' + request.url,
    }
    resp = jsonify(message)
    resp.status_code = 404
    return resp
if __name__ == "__main__":
    app.run(host= '0.0.0.0')
""" importing all packmages"""
from flask import Flask,render_template,request,session,redirect,url_for,flash
import smtplib
from flask_mail import Mail
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
import pandas as pd
import hashlib
import fileinput
import time
import mysql.connector

# data base connection
db=mysql.connector.connect(user='root',password='root',port=3307,database='cloudsecurestoragemechanism')
cur=db.cursor()


# instance app for method
app=Flask(__name__)
start = time.time
count = 0
# Session secretkey
app.secret_key="@h4sd#&@^%$)(&*&^*&(&(*&^%$$WGHFJS3"


# This function shows the home page
@app.route("/")
def index():
    return render_template('index.html')




# proxy login
@app.route('/proxy_login',methods=['POST','GET'])
def proxylogin():
    if request.method=='POST':
        name=request.form['email']
        password=request.form['passcode']
        if name=="proxy@gmail.com" and password =="proxy":
            msg="Welcome Proxy"
            return render_template("proxyhome.html",msg=msg)
        msg="Invalid Username or password"
        return render_template("proxylogin.html",msg=msg)

    return render_template("proxylogin.html")

# New User registration
@app.route('/Client_Registration',methods=['POST','GET'])
def ClientRegistration():
    if request.method=='POST':
        usertype=request.form['usertype']
        session['usertype']=usertype
        name=request.form['name']
        passcode=request.form['passcode']
        dob=request.form['dob']
        gender=request.form['gender']
        contact=request.form['contact']
        Email=request.form['email']
        address=request.form['address']
        pincode=request.form['pincode']
        if usertype=="1" or gender =="1":
            msg="User Type or Gender is not selected"
            return render_template('ClientRegistration.html',msg=msg)
        else:
            sql="select * from userregistration where email='%s' and usertype='%s'"%(Email,usertype)
            cur.execute(sql)
            data=cur.fetchall()
            db.commit()
            if data==[]:
                sql="insert into userregistration(usertype,name,passcode,dob,gender,contact,email,address,pincode)values(%s,%s,%s,%s,%s,%s,%s,%s,%s)"
                val=(usertype,name,passcode,dob,gender,contact,Email,address,pincode)
                cur.execute(sql,val)
                db.commit()
                content = "Username : " + Email + "  Password : " + passcode
                sender_address = 'admin@gmail.com'
                sender_pass = 'adminadmin'
                receiver_address = Email
                # message = MIMEMultipart()
                # message['From'] = sender_address
                # message['To'] = Email
                # message['Subject'] = "Cloud Secure Storage Mechanism"
                # message.attach(MIMEText(content, 'plain'))
                # ss = smtplib.SMTP('smtp.gmail.com', 587)
                # ss.starttls()
                # ss.login(sender_address, sender_pass)
                # text = message.as_string()
                # ss.sendmail(sender_address, receiver_address, text)
                # ss.quit()
                msg="Details Registered Successfuly"
                return render_template('ClientRegistration.html',msg=msg)
            else:
                msg="Details already exists"
                return render_template('ClientRegistration.html', msg=msg)
    return render_template('ClientRegistration.html')


# User as sender login
@app.route('/sender_log',methods=["POST","GET"])
def sender():
    if request.method=='POST':
        name=request.form['email']
        password=request.form['passcode']
        sql="select * from userregistration where email=%s and passcode=%s and usertype='sender'"
        val=(name,password)
        cur.execute(sql,val)
        data=cur.fetchall()



        if data == []:
            msg="Details are not valid"
            return render_template('senderlog.html',msg=msg)
        else:
            msg=name
            id = data[0][0]
            session['senderid'] = id
            return render_template('senderhome.html',msg=msg)
    return render_template('senderlog.html')



# User as receiver login
@app.route('/receiver_log',methods=["POST","GET"])
def receiver():
    if request.method=='POST':
        name=request.form['email']
        password=request.form['passcode']
        session['receivername'] = name
        session['receiverpassword']=password
        sql="select * from userregistration where email=%s and passcode=%s and usertype='receiver'"
        val=(name,password)
        cur.execute(sql,val)
        data=cur.fetchall()

        db.commit()
        if data == []:
            msg="Details are not valid"
            return render_template('receiverlog.html',msg=msg)
        else:
            msg=name
            session['receiveremail'] = data[0][7]
            return render_template('receiverhome.html',msg=msg)
    return render_template('receiverlog.html')


# Receiver logout
@app.route('/receiver_logout')
def receiverlogout():

    return redirect(url_for('index'))


# view all files list
@app.route('/view_all_files')
def viewallfiles():
    sql="select id,Filename from serverone where Filerequest='pending'"
    data1=pd.read_sql_query(sql,db)
    db.commit()

    sql = "select id,Filename from servertwo where Filerequest='pending'"
    data2 = pd.read_sql_query(sql, db)
    db.commit()

    sql = "select id,Filename from serverthree where Filerequest='pending'"
    data3 = pd.read_sql_query(sql, db)
    db.commit()
    return render_template('allfiles.html',cols=data1.columns.values,row=data1.values.tolist(),col=data2.columns.values,rows=data2.values.tolist(),columns=data3.columns.values,ro=data3.values.tolist())


# this function defines to view the recever's requested files
@app.route('/myfiles')
def myfiles():
    sql="select id,Filename from serverone where Receiver='%s'"%(session['receivername'])
    data1=pd.read_sql_query(sql,db)

    sql = "select id,Filename from servertwo where Receiver='%s'" % (session['receivername'])
    data2 = pd.read_sql_query(sql, db)


    sql = "select id,Filename from serverthree where Receiver='%s'" % (session['receivername'])
    data3 = pd.read_sql_query(sql, db)

    return render_template('myfiles.html',cols=data1.columns.values,rows=data1.values.tolist(),col=data2.columns.values,row=data2.values.tolist(),columns=data3.columns.values,rowss=data3.values.tolist())


# this function defines to downloadable files
@app.route('/View_download/<y>/<z>')
def Viewdownload(y=0,z=''):

    sql = "select id,Filename,Fileencdata1 from serverone where id='%s' and Filename='%s'" % (y,z)
    cur.execute(sql)
    data1=cur.fetchall()
    db.commit()

    for i in data1:
        da=i[2]
        name=i[1]
        id=i[0]
        return render_template("download.html",da=da,name=name,id=id)

    sql = "select id,Filename,Fileencdata1 from servertwo where id='%s' and Filename='%s'" % (y,z)
    cur.execute(sql)
    data2 = cur.fetchall()
    db.commit()

    for i in data2:
        da=i[2]
        name=i[1]
        id=i[0]
        return render_template("download.html",da=da,name=name,id=id)

    sql = "select id,Filename,Fileencdata1 from serverthree where id='%s' and Filename='%s'" % (y,z)
    cur.execute(sql)
    data3 = cur.fetchall()
    db.commit()
    for i in data3:
        da=i[2]
        name=i[1]
        id=i[0]
        return render_template("download.html",da=da,name=name,id=id)
    return render_template("download.html")

# This function used to decrypt's and download the files
@app.route('/decrypt_data/<y>/<z>',methods=['POST','GET'])
def decryptdata(y=0,z=''):
    if request.method=='POST':
        en=request.form['trapdoor']
        # sql = "select AES_DECRYPT(file, 'rupesh')decrypt from files where email='%s'" % (session['uemail'])
        sql="select AES_DECRYPT(Fileencdata1, 'keys')decrypt from serverone where id='%s' and Filename='%s'"%(y,z)
        cur.execute(sql)
        data1=cur.fetchall()
        db.commit()


        if data1 ==[]:
            sql = "select AES_DECRYPT(Fileencdata1, 'keys')decrypt from servertwo where id='%s' and Filename='%s' "%(y,z)
            cur.execute(sql)
            data2 = cur.fetchall()
            db.commit()


            if data2 ==[]:
                sql = "select AES_DECRYPT(Fileencdata1, 'keys')decrypt from serverthree where id='%s' and Filename='%s'"%(y,z)
                cur.execute(sql)
                data3 = cur.fetchall()
                db.commit()

                info=data3[0][0]
                info = info.decode('utf-8')
                return render_template("downloadfile.html",info=info)
            info = data2[0][0]
            info = info.decode('utf-8')
            return render_template("downloadfile.html",info=info)
        info = data1[0][0]
        info=info.decode('utf-8')
        return render_template("downloadfile.html",info=info)
    return render_template("download.html")


# this function defines to sends request for the files
@app.route('/send_request/<y>/<z>')
def sendrequest(y=0,z=''):

    sql="select id,Filename from serverone where id='%s' and Filename='%s'"%(y,z)
    data1=pd.read_sql_query(sql,db)
    db.commit()

    if data1.empty:
        sql = "select id,Filename from servertwo where id='%s' and Filename='%s'" % (y, z)
        data2 = pd.read_sql_query(sql, db)
        db.commit()

        if data2.empty:
            sql = "select id,Filename from serverthree where id='%s' and Filename='%s'" % (y, z)
            data3 = pd.read_sql_query(sql, db)
            db.commit()

            sql="update serverthree set Filerequest='request',Receiver='%s' where Receiver='none' and Filerequest='pending' and id='%s' and Filename='%s'" % (session['receiveremail'],y, z)
            cur.execute(sql)
            db.commit()

        sql = "update servertwo set Filerequest='request',Receiver='%s' where Receiver='none' and Filerequest='pending' and id='%s' and Filename='%s'" % (session['receiveremail'],y, z)
        cur.execute(sql)
        db.commit()
    sql = "update serverone set Filerequest='request',Receiver='%s' where Receiver='none' and  Filerequest='pending' and id='%s' and Filename='%s'" % (session['receiveremail'],y, z)
    cur.execute(sql)
    db.commit()

    flash("request sent successfully", "success")
    return redirect(url_for('viewallfiles'))

# This function Views all the files which are requested
@app.route('/viewrequest')
def viewrequest():

    sql="select id,Filename,Trapdoor,Receiver from serverone where Filerequest='request' "
    data1=pd.read_sql_query(sql,db)
    db.commit()



    sql = "select id,Filename,Trapdoor,Receiver from servertwo where Filerequest='request' "
    data2 = pd.read_sql_query(sql, db)
    db.commit()



    sql = "select id,Filename,Trapdoor,Receiver from serverthree where Filerequest='request' "
    data3 = pd.read_sql_query(sql, db)
    db.commit()


    return render_template('viewrequest.html',cols=data1.columns.values,row=data1.values.tolist(),col=data2.columns.values,rows=data2.values.tolist(),columns=data3.columns.values,ro=data3.values.tolist())

# This function is the response for the requested files
@app.route('/Send_response/<y>/<z>/<z1>/<z2>')
def Sendresponse(y=0,z='',z1='',z2=''):

    content = "To view your file use Passcode : " + z1
    sender_address = 'admin@gmail.com'
    sender_pass = 'adminadmin'
    receiver_address = z2


    # message = MIMEMultipart()
    # message['From'] = sender_address
    # message['To'] = Email
    # message['Subject'] = "Cloud Secure Storage Mechanism"
    # message.attach(MIMEText(content, 'plain'))
    # ss = smtplib.SMTP('smtp.gmail.com', 587)
    # ss.starttls()
    # ss.login(sender_address, sender_pass)
    # text = message.as_string()
    # ss.sendmail(sender_address, receiver_address, text)
    # ss.quit()


    sql="update serverone set Filerequest='accept' where id='%s' and Filename='%s' and Trapdoor='%s'"%(y,z,z1)
    cur.execute(sql)
    db.commit()
    sql = "update servertwo set Filerequest='accept' where id='%s' and Filename='%s' and Trapdoor='%s'" % (y, z, z1)
    cur.execute(sql)
    db.commit()
    sql = "update serverthree set Filerequest='accept' where id='%s' and Filename='%s' and Trapdoor='%s'" % (y, z, z1)
    cur.execute(sql)
    db.commit()
    return redirect(url_for('viewrequest'))



# cloud login
@app.route('/cloud_server',methods=['POST','GET'])
def cloudserver():
    if request.method=='POST':
        name=request.form['email']
        password=request.form['passcode']
        if name=='cloudserver@gmail.com' and password=='server':
            return render_template('cloudhome.html',name=name)
        elif name=="attacker@gmail.com" and password=="attacker":
            msg="Attacker Login Success"
            return render_template('attacker.html',msg=msg)
        else:
            msg="Invalid Credentials"
            return render_template('cloudserver.html',msg=msg)
    return render_template('cloudserver.html')


# This function for searching file
@app.route('/searchfile')
def searchfile():
    return render_template('searchfile.html')

# this function defines attacker logout
@app.route('/attacker_logout')
def attackerlogout():
    return redirect(url_for('index'))



# This function for attack code for searched file from attacker
@app.route('/attacker',methods=['POST','GET'])
def attacker():
    if request.method=='POST':
        filename=request.form['filename']
        sql="select id,Filename from serverone where filename='%s'"%(filename)
        data1=pd.read_sql_query(sql,db)
        db.commit()
        if data1.empty:
            sql = "select id,Filename from servertwo where filename='%s'" % (filename)
            data2 = pd.read_sql_query(sql, db)
            db.commit()
            if data2.empty:
                sql = "select id,Filename from serverthree where filename='%s'" % (filename)
                data3 = pd.read_sql_query(sql, db)
                db.commit()
                return render_template('files.html',cols=data3.columns.values,rows=data3.values.tolist())
            return render_template('files.html', cols=data2.columns.values, rows=data2.values.tolist())
        return render_template('files.html', cols=data1.columns.values, rows=data1.values.tolist())
    return render_template('attacker.html')


# this function for file attack code
@app.route('/perform_attack/<x>')
def performattack(x=''):

    sql = "select id,Filename from serverone where filename='%s'" % (x)
    data1 = pd.read_sql_query(sql, db)
    db.commit()


    if data1.empty:
        sql = "select id,Filename from servertwo where filename='%s'" % (x)
        data2 = pd.read_sql_query(sql, db)
        db.commit()

        if data2.empty:
            sql = "select id,Filename from serverthree where filename='%s'" % (x)
            data3 = pd.read_sql_query(sql, db)
            db.commit()

            sql="update serverthree set Attack='Attacked' where Attack='perform' and Filename='%s'"%(x)
            cur.execute(sql)
            db.commit()

            sql = "select id,Filename from serverthree where filename='%s' and Attack='perform'" % (x)
            data3 = pd.read_sql_query(sql, db)
            db.commit()

            msg = "File Attacked"
            return render_template('files.html', cols=data3.columns.values, rows=data3.values.tolist(),msg=msg)
        sql = "update servertwo set Attack='Attacked' where Attack='perform' and Filename='%s'" % (x)
        cur.execute(sql)
        db.commit()
        sql = "select id,Filename from servertwo where filename='%s' and Attack='perform'" % (x)
        data2 = pd.read_sql_query(sql, db)
        db.commit()

        msg = "File Attacked"
        return render_template('files.html', cols=data2.columns.values, rows=data2.values.tolist(),msg=msg)
    sql = "update serverone set Attack='Attacked' where Attack='perform' and Filename='%s'" % (x)
    cur.execute(sql)
    db.commit()
    sql = "select id,Filename from serverone where filename='%s' and Attack='perform'" % (x)
    data1 = pd.read_sql_query(sql, db)
    db.commit()

    msg="File Attacked"

    return render_template('files.html', cols=data1.columns.values, rows=data1.values.tolist(),msg=msg)


# this function definesto view all the files  stored in the server
@app.route('/view_servers')
def viewservers():
    sql="select id,Filename from serverone"
    data=pd.read_sql_query(sql,db)
    db.commit()
    sql = "select id,Filename from servertwo"
    data1 = pd.read_sql_query(sql, db)
    db.commit()
    sql = "select id,Filename from serverthree"
    data2 = pd.read_sql_query(sql, db)
    db.commit()
    return render_template('servers.html',cols=data.columns.values,rows=data.values.tolist(),column=data1.columns.values,rowss=data1.values.tolist(),columns=data2.columns.values,rowws=data2.values.tolist())



# This function shows the files wghich are attacked based on status
@app.route('/verify_files')
def verifyfiles():
    sql="select Id,Filename,Attack from serverone where Attack='attacked'"
    data=pd.read_sql_query(sql,db)
    db.commit()

    if data.empty:
        sql = "select Id,Filename,Attack from servertwo where Attack='attacked'"
        data1 = pd.read_sql_query(sql, db)
        db.commit()

        if data1.empty:
            sql = "select Id,Filename,Attack from serverthree where Attack='attacked'"
            data2 = pd.read_sql_query(sql, db)
            db.commit()

            return render_template('verifyfiles.html',cols=data2.columns.values,rows=data2.values.tolist())
        return render_template('verifyfiles.html',cols=data1.columns.values,rows=data1.values.tolist())
    return render_template('verifyfiles.html',cols=data.columns.values,rows=data.values.tolist())


# this function shows the list of updated files
@app.route('/protectfile/<d>/<c>')
def protectfile(d=0,c=''):

    sql="select id,Filename,Attack from serverone where id='%s' and Filename='%s'"%(d,c)
    cur.execute(sql)
    data=cur.fetchall()
    db.commit()

    sql="update serverone set Attack='perform' where id='%s' and Filename='%s'"%(d,c)
    cur.execute(sql)
    db.commit()

    sql = "update servertwo set Attack='perform' where id='%s' and Filename='%s'" % (d, c)
    cur.execute(sql)
    db.commit()

    sql = "update serverthree set Attack='perform' where id='%s' and Filename='%s'" % (d, c)
    cur.execute(sql)
    db.commit()

    flash("file secured successfully","success")
    return redirect(url_for('viewservers'))

# This function defines sender logout
@app.route('/sender_logout')
def senderlogout():
    session.pop("senderid",None)
    return redirect(url_for('index'))

# this function defiles the code of uploading files
@app.route('/upload_files',methods=['POST','GET'])
def uploadfiles():
    if request.method=="POST":
        server=request.form['servers']
        file=request.files['files']
        if server=="serverone":
            name=file.filename
            document=file.read()
            document=document.decode()
            sql="select Filename from serverone where filename='%s'"%(name)
            cur.execute(sql)
            data=cur.fetchall()
            db.commit()
            if data == []:
                sql="insert into serverone(Filename,File,Userid) values ('%s','%s','%s')"%(name,document,session['senderid'])
                cur.execute(sql)
                db.commit()
                sql = "select id,Filename,File from serverone where Filename='%s' " % (name)
                cur.execute(sql)
                data1 = cur.fetchall()
                db.commit()
                id=data1[0][0]
                name=data1[0][1]
                content=data1[0][2]
                return render_template('uploadedfile.html',id=id,name=name,content=content)
            msg = 'filename already exist'
            return render_template("upload.html", msg=msg)
        elif server =="servertwo":
            name = file.filename
            document = file.read()
            document = document.decode()
            sql = "select Filename from servertwo where filename='%s'" % (name)
            cur.execute(sql)
            data = cur.fetchall()
            db.commit()
            if data == []:
                sql = "insert into servertwo(Filename,File,Userid) values ('%s','%s','%s')" % (name, document, session['senderid'])
                cur.execute(sql)
                db.commit()
                sql = "select id,Filename,File from servertwo where Filename='%s' " % (name)
                cur.execute(sql)
                data1 = cur.fetchall()
                db.commit()
                id = data1[0][0]
                name = data1[0][1]
                content = data1[0][2]
                return render_template('uploadedfile.html', id=id, name=name, content=content)
            msg = 'filename already exist'
            return render_template("upload.html", msg=msg)
        elif server == "serverthree":
            name = file.filename
            document = file.read()
            document = document.decode()
            sql = "select Filename from serverthree where filename='%s'" % (name)
            cur.execute(sql)
            data = cur.fetchall()
            db.commit()
            if data == []:
                sql = "insert into serverthree(Filename,File,Userid) values ('%s','%s','%s')" % (name, document, session['senderid'])
                cur.execute(sql)
                db.commit()
                sql = "select id,Filename,File from serverthree where Filename='%s' " % (name)
                cur.execute(sql)
                data1 = cur.fetchall()
                db.commit()
                id = data1[0][0]
                name = data1[0][1]
                content = data1[0][2]
                return render_template('uploadedfile.html', id=id, name=name, content=content)
            else:
                msg = 'filename already exist'
                return render_template("upload.html", msg=msg)
        else:
            msg='filename already exist'
            return render_template("upload.html",msg=msg)
    return render_template("upload.html")


# This function used to encrypt the files which are uploaded
@app.route('/encrypt_data/<x>/<y>')
def encryptdata(x=0,y=''):
    # server one
    sql="select * from serverone where id='%s' and Filename='%s'"%(x,y)
    cur.execute(sql)
    data1=cur.fetchall()
    db.commit()


    sql = "select * from servertwo where id='%s' and Filename='%s'" % (x, y)
    cur.execute(sql)
    data2 = cur.fetchall()
    db.commit()


    sql = "select * from serverthree where id='%s' and Filename='%s'" % (x, y)
    cur.execute(sql)
    data3 = cur.fetchall()
    db.commit()

    if data1!=[]:
        id = data1[0][0]
        name = data1[0][1]
        content = data1[0][2]
        file_data =content
        datalen = int(len(file_data) / 2)
        g = 0
        a = ''
        b = ''
        c = ''
        print(datalen)
        # for i in range(0, 1):
            # if i == 0:
        a = file_data[g: datalen:1]
                # a=a.decode('utf-8')
        print(a)
        c = file_data[datalen: len(file_data):1]
        # c = c.decode('utf-8')
        print(c)
        sql="update serverone set Fileencdata1=AES_ENCRYPT('%s','keys'),Fileencdata2=AES_ENCRYPT('%s','keys'),Fileencdata3=AES_ENCRYPT('%s','keys')"%(content,a,c)
        cur.execute(sql)
        db.commit()



        sql = "select * from serverone where id='%s' and Filename='%s'" %(x, y)
        cur.execute(sql)
        data = cur.fetchall()
        db.commit()
        da1 = data[0][3]
        return render_template('uploadedfile.html', id=id, name=name, da=da1, content=content)
    elif data2 !=[]:
        id = data2[0][0]
        name = data2[0][1]
        content = data2[0][2]
        file_data =content
        datalen = int(len(file_data) / 2)

        g = 0
        a = ''
        b = ''
        c = ''
        print(datalen)
        # for i in range(0, 1):
            # if i == 0:
        a = file_data[g: datalen:1]
                # a=a.decode('utf-8')
        print(a)

        c = file_data[datalen: len(file_data):1]
        # c = c.decode('utf-8')
        print(c)
        sql="update servertwo set Fileencdata1=AES_ENCRYPT('%s','keys'),Fileencdata2=AES_ENCRYPT('%s','keys'),Fileencdata3=AES_ENCRYPT('%s','keys')"%(content,a,c)
        cur.execute(sql)
        db.commit()
        sql = "select * from servertwo where id='%s' and Filename='%s'" % (x, y)
        cur.execute(sql)
        data = cur.fetchall()
        db.commit()
        da2 = data[0][3]

        return render_template('uploadedfile.html', id=id, name=name, da=da2, content=content)
    elif data3 !=[]:
        id = data3[0][0]
        name = data3[0][1]
        content = data3[0][2]

        file_data =content
        datalen = int(len(file_data) / 2)

        g = 0
        a = ''
        b = ''
        c = ''
        print(datalen)
        # for i in range(0, 1):
            # if i == 0:
        a = file_data[g: datalen:1]
                # a=a.decode('utf-8')
        print(a)

        c = file_data[datalen: len(file_data):1]
        # c = c.decode('utf-8')
        print(c)
        sql="update serverthree set Fileencdata1=AES_ENCRYPT('%s','keys'),Fileencdata2=AES_ENCRYPT('%s','keys'),Fileencdata3=AES_ENCRYPT('%s','keys')"%(content,a,c)
        cur.execute(sql)
        db.commit()
        sql = "select * from serverthree where id='%s' and Filename='%s'" % (x, y)
        cur.execute(sql)
        data = cur.fetchall()
        db.commit()
        da3 = data[0][3]
        return render_template('uploadedfile.html', id=id, name=name, da=da3, content=content)
    return render_template('uploadedfile.html')


# This function generates the trapdoor for files
@app.route('/trap_door/<x>/<y>')
def trapdoor(x=0,y=''):
    sql="select File from serverone where id='%s' and Filename='%s'"%(x,y)
    cur.execute(sql)
    data1=cur.fetchall()
    db.commit()


    sql = "select File from servertwo where id='%s' and Filename='%s'" % (x, y)
    cur.execute(sql)
    data2 = cur.fetchall()
    db.commit()


    sql = "select File from serverthree where id='%s' and Filename='%s'" % (x, y)
    cur.execute(sql)
    data3 = cur.fetchall()
    db.commit()


    if data1 !=[]:
        cont = data1[0][0]
        result = hashlib.sha1(cont.encode())
        hash1 = result.hexdigest()
        sql="update serverone set Trapdoor='%s' where id='%s' and Filename='%s'"%(hash1,x,y)
        cur.execute(sql)
        db.commit()
        sql="select * from serverone where id='%s' and Filename='%s'"%(x,y)
        cur.execute(sql)
        data1=cur.fetchall()
        db.commit()
        id=data1[0][0]
        filename=data1[0][1]
        content=data1[0][2]
        encrypt=data1[0][3]
        trapdoor=data1[0][6]

        return render_template('uploadedfile.html', id=x, da=encrypt, name=filename, content=content, trapdoor=trapdoor)


    elif data2 !=[]:
        cont = data2[0][0]
        result = hashlib.sha1(cont.encode())
        hash1 = result.hexdigest()
        sql = "update servertwo set Trapdoor='%s' where id='%s' and Filename='%s'" % (hash1, x, y)
        cur.execute(sql)
        db.commit()
        sql = "select * from servertwo where id='%s' and Filename='%s'" % (x, y)
        cur.execute(sql)
        data2 = cur.fetchall()

        db.commit()
        id = data2[0][0]
        filename = data2[0][1]
        content = data2[0][2]
        encrypt = data2[0][3]
        trapdoor = data2[0][6]

        return render_template('uploadedfile.html', id=x, da=encrypt, name=filename, content=content, trapdoor=trapdoor)


    elif data3 !=[]:
        cont = data3[0][0]
        result = hashlib.sha1(cont.encode())
        hash1 = result.hexdigest()
        sql = "update serverthree set Trapdoor='%s' where id='%s' and Filename='%s'" % (hash1, x, y)
        cur.execute(sql)
        db.commit()
        sql = "select * from serverthree where id='%s' and Filename='%s'" % (x, y)
        cur.execute(sql)
        data3= cur.fetchall()
        db.commit()
        id = data3[0][0]
        filename = data3[0][1]
        content = data3[0][2]
        encrypt = data3[0][3]
        trapdoor = data3[0][6]

        return render_template('uploadedfile.html', id=x, da=encrypt, name=filename, content=content, trapdoor=trapdoor)
    else:
        msg="select properly"
        return render_template('uploadedfile.html',msg=msg)



# function defines file uplod in server

@app.route('/succe/<x>/<y>')
def succe(x=0,y=''):
    session['id']=x
    session['filename']=y
    msg="File Uploaded successfuly"
    try:
        sql="update serverone set status='accepted' where status='pending' and id='%s' and Filename='%s'"%(session['id'],session['filename'])
        cur.execute(sql)
        db.commit()
    except :
        sql = "update serverone set status='accepted' where status='pending' and id='%s' and Filename='%s'" % (
        session['id'], session['filename'])
        cur.execute(sql)
        db.commit()
    finally:
        sql = "update serverone set status='accepted' where status='pending' and id='%s' and Filename='%s'" % (
        session['id'], session['filename'])
        cur.execute(sql)
        db.commit()
    return render_template('succe.html',msg=msg,x=x,y=y)


# This function shows the all files for server

@app.route('/View_files')
def Viewfiles():
    sql="select id,Filename,Trapdoor from serverone where OwnerType='sender' and Userid='%s'"%(session['senderid'])
    data=pd.read_sql_query(sql,db)
    db.commit()

    sql = "select id,Filename,Trapdoor from servertwo where OwnerType='sender' and Userid='%s'" % (session['senderid'])
    data1 = pd.read_sql_query(sql, db)
    db.commit()

    sql = "select id,Filename,Trapdoor from serverthree where OwnerType='sender' and Userid='%s'" % (session['senderid'])
    data2 = pd.read_sql_query(sql, db)
    db.commit()

    if data.empty:
        msg="No Files"
        return render_template('viewfiles.html', cols=data.columns.values, row=data.values.tolist(),col=data1.columns.values, rows=data1.values.tolist(),columns=data2.columns.values, ro=data2.values.tolist(),msg=msg)
    elif data1.empty:
        msg = "No Files"
        return render_template('viewfiles.html', cols=data.columns.values, row=data.values.tolist(),col=data1.columns.values, rows=data1.values.tolist(), columns=data2.columns.values,ro=data2.values.tolist(), msg=msg)
    elif data2.empty:
        msg = "No Files"
        return render_template('viewfiles.html', cols=data.columns.values, row=data.values.tolist(),col=data1.columns.values, rows=data1.values.tolist(), columns=data2.columns.values,ro=data2.values.tolist(), msg=msg)
    return render_template('viewfiles.html',cols=data.columns.values, row=data.values.tolist(),col=data1.columns.values, rows=data1.values.tolist(), columns=data2.columns.values,ro=data2.values.tolist())







# this function defines to delete the files
@app.route('/deletefile/<s>/<s1>')
def deletefile(s=0,s1=''):

    sql="delete from serverone where id='%s' and Filename='%s'"%(s,s1)
    cur.execute(sql)
    db.commit()

    sql = "delete from servertwo where id='%s' and Filename='%s'"%(s,s1)
    cur.execute(sql)
    db.commit()

    sql = "delete from serverthree where id='%s' and Filename='%s'"%(s,s1)
    cur.execute(sql)
    db.commit()
    return redirect(url_for('Viewfiles'))


if __name__=="__main__":
    app.run(debug=True)
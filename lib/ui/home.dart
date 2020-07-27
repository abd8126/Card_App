import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:fluttertoast/fluttertoast.dart';

myapp1() {
  FlutterStatusbarcolor.setStatusBarColor(Colors.grey);

  myprint() {
    print('Anubhav Bhardwaj  !! ');
  }

  myt() {
    Fluttertoast.showToast(
        msg: "This is Anubhav !!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.amber,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  var mybody = Container(
    alignment: Alignment.center,
    width: double.infinity,
    height: double.infinity,
    color: Colors.grey.shade200,
    margin: EdgeInsets.all(20),
    child: Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.grey,
              width: 3,
            ),
          ),
          margin: EdgeInsets.all(50),
          // padding: EdgeInsets.all(30),
          // padding: EdgeInsets.only(left: 70),
          alignment: Alignment.center,
          width: 350,
          height: 200,
          // color: Colors.amber,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Anubhav Bhardwaj',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.email),
                  Text('  anubhav283203@gmail.com'),
                  Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.phone),
                  Text('  8126403847'),
                  )
                ],
              ),
            ],
          ),
        ),
        GestureDetector(
          // onTap: myprint,
          onDoubleTap: myprint,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://media-exp1.licdn.com/dms/image/C5103AQGABr1d8-iJ8g/profile-displayphoto-shrink_400_400/0?e=1601510400&v=beta&t=oAPYPVB8L9I0CMSUqKmsw2_pnALD79QXaSKuhysjD8o'),
                fit: BoxFit.cover,
              ),
              color: Colors.amber,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: Colors.amber,
                width: 3,
              ),
            ),
            // margin: EdgeInsets.all(20),
            width: 100,
            height: 100,
            // color: Colors.blue,
            // child: Text('second'),
          ),
        ),
      ],
    ),
  );

  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
        backgroundColor: Colors.amber,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.add_a_photo), onPressed: myt),
          IconButton(icon: Icon(Icons.account_circle), onPressed: null)
        ],
      ),
      body: mybody,
    ),
  );
}

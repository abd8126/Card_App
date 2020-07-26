import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:fluttertoast/fluttertoast.dart';

Myapp() {
  FlutterStatusbarcolor.setStatusBarColor(Colors.blueAccent);

  var mybody = Container(
    width: double.infinity,
    height: 150,
    decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
              'https://www.groovypost.com/wp-content/uploads/2017/12/typing_laptop_display_email_Featured.jpg'),
        ),
        color: Colors.redAccent.shade100,
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          width: 5,
          color: Colors.white,
        )),
  );

  ab() {
    print('Someone Clicked');
    Fluttertoast.showToast(
        msg: 'Someone Clicked',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        textColor: Colors.redAccent.shade400,
        fontSize: 30);
  }

  return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent.shade700,
          title: Text('Flipkart'),
          leading: Image.network(
              'https://raw.githubusercontent.com/abd8126/Flutter_class/master/kisspng-flipkart-e-commerce-logo-bangalore-chief-executive-5afaefba5c07f0.664026361526394810377.png'),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.notifications), onPressed: ab),
            IconButton(icon: Icon(Icons.mail), onPressed: ab),
          ],
        ),
        body: mybody,
      ));
}

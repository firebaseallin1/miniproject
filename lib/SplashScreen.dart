import 'dart:async';

import 'package:flutter/material.dart';

import 'login_page.dart';





class SplashScreen extends StatefulWidget {
  @override
  Splash createState() => Splash();
}

class Splash extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    //getStringValuesSF();

  }



  void splashDataCheck() {

      print("false");
      Timer(
        Duration(seconds: 5),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginPage())),
      );
  }


  @override
  Widget build(BuildContext context) {
    Timer(
        const Duration(seconds: 5),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) =>
                // islogged == true ? AdminDashboard() : LoginPage())));
                 const LoginPage())));
    var assetsImage = new AssetImage('assets/images/atm.png'); //<- Creates an object that fetches an image.
    var image = new Image(
        image: assetsImage,
        height: MediaQuery.of(context).size.height); //<- Creates a widget that displays an image.
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        /* appBar: AppBar(
          title: Text("MyApp"),
          backgroundColor:
              Colors.blue, //<- background color to combine with the picture :-)
        ),*/
        body: Container(
          decoration: new BoxDecoration(color: Colors.white),
          child: new Center(
            child: image,
          ),
        ), //<- place where the image appears
      ),
    );
  }

  // getStringValuesSF() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   setState(() {
  //     islogged = prefs.getBool('LoggedIn');
  //   });
  // }
}

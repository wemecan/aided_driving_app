import 'package:flutter/material.dart';
import 'dart:async';
import 'package:aided_driving_app/pages/login/login_page.dart';
import 'package:flutter/services.dart';
import 'package:aided_driving_app/pages/home_chart_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        platform: TargetPlatform.iOS,
      ),
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/login': (BuildContext context) => LoginPage(),
        '/home' : (BuildContext context) => HomeChartViewPage(),
      },
    );
  }
}

class SplashScreen extends StatefulWidget{
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{

  startTime() async{
    var _duration = new Duration(seconds: 3);
    return Timer(_duration, navigationPage);
  }

  void navigationPage(){
    Navigator.of(context).pushReplacementNamed('/login');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Image.asset('assets/images/launch_image.jpg'),
      ),
    );
  }
}
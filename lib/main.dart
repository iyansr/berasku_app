// import 'package:berasku_app/pages/home_page_v2.dart';
import 'package:berasku_app/pages/home_page.dart';
import 'package:berasku_app/pages/login_page.dart';
import 'package:berasku_app/pages/register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarIconBrightness: Brightness.light),
    );
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/LoginPage': (context) => LoginPage(),
        '/RegisterPage': (context) => RegisterPage(),
        '/HomePage': (context) => HomePage(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Berasku',
      theme: ThemeData(
        fontFamily: 'Raleway',
        primarySwatch: Colors.red,
      ),
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image.asset('assets/berasku_circle.png'),
            ),
            FloatingActionButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/LoginPage');
              },
              child: Icon(
                FontAwesomeIcons.chevronRight,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    Map<int, Color> color = {
      50: Color(0xffea2c2c),
      100: Color(0xffea2c2c),
      200: Color(0xffea2c2c),
      300: Color(0xffea2c2c),
      400: Color(0xffea2c2c),
      500: Color(0xffea2c2c),
      600: Color(0xffea2c2c),
      700: Color(0xffea2c2c),
      800: Color(0xffea2c2c),
      900: Color(0xffea2c2c),
    };
    final MaterialColor _custColor = MaterialColor(0xffea2c2c, color);
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarIconBrightness: Brightness.light),
    );
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/LoginPage': (context) => LoginPage(),
        '/RegisterPage': (context) => RegisterPage(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Berasku',
      theme: ThemeData(
        fontFamily: 'Raleway',
        primarySwatch: _custColor,
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
              child: Image.asset('images/logo.png', scale: 3),
            ),
            SizedBox(height: 40),
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

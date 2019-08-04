import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _obsecure1 = true;
  bool _obsecure2 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Container(
                    height: 610,
                    child: Form(
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 200,
                            child: Image.asset(
                              'assets/berasku_square.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 16),
                              labelText: 'Email',
                              alignLabelWithHint: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                    width: 10,
                                    color: Theme.of(context).primaryColor),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 16),
                              labelText: 'Nama',
                              alignLabelWithHint: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                    width: 10,
                                    color: Theme.of(context).primaryColor),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            obscureText: _obsecure1,
                            decoration: InputDecoration(
                              suffix: SizedBox(
                                width: 18,
                                height: 18,
                                child: IconButton(
                                  padding: EdgeInsets.all(0.0),
                                  onPressed: () {
                                    setState(() {
                                      _obsecure1 = !_obsecure1;
                                    });
                                  },
                                  icon: Icon(
                                    _obsecure1
                                        ? FontAwesomeIcons.eyeSlash
                                        : FontAwesomeIcons.eye,
                                    color: Colors.black,
                                    size: 18,
                                  ),
                                ),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 16),
                              labelText: 'Password',
                              alignLabelWithHint: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                    width: 10,
                                    color: Theme.of(context).primaryColor),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            obscureText: _obsecure2,
                            decoration: InputDecoration(
                              suffix: SizedBox(
                                width: 18,
                                height: 18,
                                child: IconButton(
                                  padding: EdgeInsets.all(0.0),
                                  onPressed: () {
                                    setState(() {
                                      _obsecure2 = !_obsecure2;
                                    });
                                  },
                                  icon: Icon(
                                    _obsecure2
                                        ? FontAwesomeIcons.eyeSlash
                                        : FontAwesomeIcons.eye,
                                    color: Colors.black,
                                    size: 18,
                                  ),
                                ),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 16),
                              labelText: 'Masukkan Ulang Password',
                              alignLabelWithHint: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                    width: 10,
                                    color: Theme.of(context).primaryColor),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          ButtonTheme(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            minWidth: MediaQuery.of(context).size.width,
                            height: 48,
                            buttonColor: Colors.red,
                            child: RaisedButton(
                              onPressed: () {
                                Navigator.pushReplacementNamed(
                                    context, '/HomePage');
                              },
                              child: Text(
                                'Register',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          ButtonTheme(
                            height: 10,
                            child: FlatButton(
                              onPressed: () {
                                Navigator.pushReplacementNamed(
                                    context, '/LoginPage');
                              },
                              child: Text(
                                'Login',
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

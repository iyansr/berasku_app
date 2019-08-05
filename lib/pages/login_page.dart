import 'package:berasku_app/pages/home_page_v2.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  void _toHomePage() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      setState(() {
        name = 'Iyan';
      });
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => HomePageV2(name: name, email: email),
      ));
    }
  }

  String _emailValidator(String val) {
    if (val.isEmpty) {
      return 'Form Tidak Boleh Kosong';
    } else if (!val.contains('@')) {
      return 'Email Salah';
    }
    return null;
  }

  String _passwordValidator(String val) {
    if (val.isEmpty) {
      return 'Form Tidak Boleh Kosong';
    } else if (val.length < 6) {
      return 'Password Harus Minimal 6 Karakter';
    }
    return null;
  }

  //From Value
  String email, name, password;

  bool _obsecure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffea2c2c),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
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
                    height: 450,
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 80,
                            child: Image.asset(
                              'images/logo_square.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            initialValue: 'iyan@gmail.com',
                            onSaved: (val) => email = val,
                            validator: _emailValidator,
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
                            initialValue: '123456',
                            onSaved: (val) => password = val,
                            validator: _passwordValidator,
                            obscureText: _obsecure,
                            decoration: InputDecoration(
                              suffix: SizedBox(
                                width: 18,
                                height: 18,
                                child: IconButton(
                                  padding: EdgeInsets.all(0.0),
                                  onPressed: () {
                                    setState(() {
                                      _obsecure = !_obsecure;
                                    });
                                  },
                                  icon: Icon(
                                    _obsecure
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
                          ButtonTheme(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            minWidth: MediaQuery.of(context).size.width,
                            height: 48,
                            buttonColor: Color(0xffea2c2c),
                            child: RaisedButton(
                              onPressed: () {
                                _toHomePage();
                              },
                              child: Text(
                                'Login',
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
                                    context, '/RegisterPage');
                              },
                              child: Text(
                                'Register',
                                style: TextStyle(color: Color(0xffea2c2c)),
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

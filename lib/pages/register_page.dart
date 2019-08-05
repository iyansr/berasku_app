import 'package:berasku_app/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  var _password1Ctrl = TextEditingController();
  var _password2Ctrl = TextEditingController();
  bool _obsecure1 = true;
  bool _obsecure2 = true;

  @override
  void initState() {
    super.initState();
    _password1Ctrl = TextEditingController(text: '123456');
    _password2Ctrl = TextEditingController(text: '123456');
  }

  void _toHomePage() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => HomePage(name: name, email: email),
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

  String _namaValidator(String val) {
    if (val.isEmpty) {
      return 'Form Tidak Boleh Kosong';
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

  String _passwordValidator2(String val) {
    if (val.isEmpty) {
      return 'Form Tidak Boleh Kosong';
    } else if (val != _password1Ctrl.text) {
      return 'Password Harus Sama';
    }
    return null;
  }

  String email, name, password1, password2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffea2c2c),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              height: /*740,*/ MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Container(
                      height: 500,
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
                            // SizedBox(height: 20),
                            TextFormField(
                              initialValue: 'IyanSR',
                              onSaved: (val) => name = val,
                              validator: _namaValidator,
                              keyboardType: TextInputType.emailAddress,
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
                            // SizedBox(height: 20),
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
                            // SizedBox(height: 20),
                            TextFormField(
                              controller: _password1Ctrl,
                              onSaved: (val) => password1 = val,
                              validator: _passwordValidator,
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
                            // SizedBox(height: 20),
                            TextFormField(
                              controller: _password2Ctrl,
                              onSaved: (val) => password2 = val,
                              validator: _passwordValidator2,
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
                            // SizedBox(height: 20),
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
                                  'Register',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            // SizedBox(height: 20),
                            ButtonTheme(
                              height: 10,
                              child: FlatButton(
                                onPressed: () {
                                  Navigator.pushReplacementNamed(
                                      context, '/LoginPage');
                                },
                                child: Text(
                                  'Login',
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
      ),
    );
  }
}

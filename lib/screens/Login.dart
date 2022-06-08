
import 'package:adl_app/screens/ForgotPassword.dart';
import 'package:adl_app/screens/Home.dart';
import 'package:adl_app/screens/Register.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:progress_dialog/progress_dialog.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> _key = new GlobalKey();
  String email, password;
  ProgressDialog pr;
  bool _passwordVisible = false;
  bool _isLoading = false;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
  }

  Future<void> login() async {
    setState(() {
      pr.show();
    });
    var body = ({
      "email": email.toString(),
      "password": password.toString(),
    });
    String url = "http://adlteaforlife.com/api/auth/login";
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    var jsonResponse;
    var response = await http.post(url, body: body);
    if (response.statusCode == 200) {
      jsonResponse = json.decode(response.body);
      print("response statusCode ${response.statusCode}");
      print("body$jsonResponse");
      if (jsonResponse != null) {
        setState(() {
          _isLoading = false;
        });
        sharedPreferences.setString(
            "token", jsonResponse["data"]["access_token"].toString());
        print("token " + "${jsonResponse["data"]["access_token"].toString()}");
        var token2 = sharedPreferences.getString("token");
        print(token2);
        Fluttertoast.showToast(
            msg: "LogIn Successful",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.blue[200],
            textColor: Colors.black,
            fontSize: 16.0);
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (BuildContext context) => HomePage()),
            (Route<dynamic> route) => false);
      } else {
        print("respopnse body---------$body");
        print("Error");
        setState(() {
          pr.hide();
        });
        Fluttertoast.showToast(
            msg: "Something went wrong",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 20,
            backgroundColor: Colors.blue[200],
            textColor: Colors.black,
            fontSize: 16.0);
        setState(() {
          pr.hide();
        });
      }
      /* else {
        setState(() {
          _isLoading = false;
        });
        print("response body ${response.body}");
      }
    }*/
    }
  }

  @override
  Widget build(BuildContext context) {
    pr = new ProgressDialog(context, type: ProgressDialogType.Normal);
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Form(
            key: _key,
            child: Column(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.only(
                      top: 50,
                    ),
                    height: 150,
                    width: 200,
                    child: Image.asset(
                      "assets/images/logoorg.png",
                    )),
                ConstrainedBox(
                    constraints: BoxConstraints(maxHeight: 70),
                    child: _emailField()),
                SizedBox(height: 5),
                ConstrainedBox(
                    constraints: BoxConstraints(maxHeight: 70),
                    child: _passwordField()),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  width: 330,
                  child: RaisedButton(
                    textColor: Colors.white,
                    color: Color.fromRGBO(154, 197, 94, 1),
                    padding: EdgeInsets.all(14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    onPressed: () {
                      final loginForm = _key.currentState;

                      if (loginForm.validate()) {
                        loginForm.save();
                        login();
                      } else {
                        print("rrrrrrr");
                      }
                    },
                    child: Text(
                      'LOG IN',
                      style: TextStyle(
                          fontStyle: FontStyle.normal, fontSize: 18.0),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ForgotPasswordPage()));
                  },
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Poppins-Medium",
                        fontSize: 15),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Don't have an account?",
                      style: TextStyle(
                          fontFamily: "CerebriSans-Medium", color: Colors.grey),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterPage()));
                      },
                      child: Text(" Sign Up",
                          style: TextStyle(
                              color: Color.fromRGBO(154, 197, 94, 1),
                              fontSize: 15,
                              decoration: TextDecoration.underline,
                              // color: Color(0xFF5d74e3),
                              fontFamily: "CerebriSans-Bold")),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      color: Colors.black,
                      height: 1,
                      width: MediaQuery.of(context).size.width * 0.4,
                    ),
                    Text(
                      " OR ",
                      style: TextStyle(color: Colors.black),
                    ),
                    Container(
                      color: Colors.black,
                      height: 1,
                      width: MediaQuery.of(context).size.width * 0.4,
                    ),
                  ],
                ),
                Container(
                  width: 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          margin: EdgeInsets.only(
                            top: 10,
                          ),
                          height: 50,
                          width: 50,
                          child: Image.asset(
                            "assets/images/facebook.png",
                          )),
                      Container(
                          margin: EdgeInsets.only(
                            top: 10,
                          ),
                          height: 50,
                          width: 50,
                          child: Image.asset(
                            "assets/images/google.png",
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Theme _emailField() {
    return Theme(
      data: ThemeData(
        primaryColor: Color.fromRGBO(154, 197, 94, 1),
        // primaryColorDark:Color.fromRGBO(238, 28, 37,1),
      ),
      child: TextFormField(
        style: TextStyle(color: Colors.black),
        onSaved: (val) => email = val,
        validator: (val) {
          return val.length < 1 ? "Enter your email" : null;
        },
        onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
        textInputAction: TextInputAction.next,
        // autofocus: false,
        obscureText: false,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            labelText: "Email Address",
            hintText: "Email Address",
            hintStyle: TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
            contentPadding:
                new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            counterText: ' ',
            prefixIcon: Icon(
              Icons.email,
              color: Colors.black,
            ),
            labelStyle: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(28)),
              borderSide: BorderSide(width: 1, style: BorderStyle.solid),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(28)),
              borderSide: BorderSide(
                  color: Colors.black, width: 1, style: BorderStyle.solid),
            )),
      ),
    );
  }

  Theme _passwordField() {
    return Theme(
      data: ThemeData(
        primaryColor: Color.fromRGBO(154, 197, 94, 1),
        // primaryColorDark: Colors.red,
      ),
      child: TextFormField(
        style: TextStyle(color: Colors.black),
        onSaved: (val) => password = val,
        validator: (val) {
          return val.length < 8 ? "Enter your password " : null;
        },
        onFieldSubmitted: (_) => FocusScope.of(context).unfocus(),
        textInputAction: TextInputAction.done,
        //autofocus: false,
        obscureText: !_passwordVisible,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            labelText: "Password",
            hintText: "Password",
            hintStyle: TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
            fillColor: Colors.green,
            contentPadding:
                new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            counterText: ' ',
            prefixIcon: Icon(
              Icons.lock_outline,
              color: Colors.black,
            ),
            suffixIcon: IconButton(
                icon: Icon(
                    // Based on passwordVisible state choose the icon
                    _passwordVisible ? Icons.visibility : Icons.visibility_off,
                    color: Colors.black),
                onPressed: () {
                  // Update the state i.e. toogle the state of passwordVisible variable
                  setState(() {
                    _passwordVisible = !_passwordVisible;
                  });
                }),
            // suffixIcon: Padding(
            //   padding: const EdgeInsets.symmetric(
            //     horizontal: 20,
            //   ),
            //   child: Tab(
            //       child: Container(
            //           padding: EdgeInsets.symmetric(vertical: 5),
            //           child: Icon(Icons.remove_red_eye,color: Colors.white,))),
            // ),
            labelStyle: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(28)),
              borderSide: BorderSide(width: 1, style: BorderStyle.solid),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(28)),
              borderSide: BorderSide(
                  color: Colors.black, width: 1, style: BorderStyle.solid),
            )),
      ),
    );
  }
}

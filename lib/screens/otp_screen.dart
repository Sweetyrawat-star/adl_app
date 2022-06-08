
import 'package:adl_app/screens/ChangePassword.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:progress_dialog/progress_dialog.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ForgotPasswordPage extends StatefulWidget {
  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {

  GlobalKey<FormState> _key = new GlobalKey();
  String otp, password;
  ProgressDialog pr;
  bool _passwordVisible=false;

  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
  }


  @override
  Widget build(BuildContext context) {
    pr = new ProgressDialog(context, type: ProgressDialogType.Normal);
    return Scaffold(
      appBar: AppBar(
        title: Text("OTP"),
        backgroundColor: Color.fromRGBO(154, 197, 94, 1),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        height: MediaQuery.of(context).size.height,
        width:  MediaQuery.of(context).size.width,

        child:SingleChildScrollView(
          child: Form(
            key: _key,
            child: Column(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.only(
                      top: 20,
                    ),
                    height: 150,
                    width: 200,
                    child: Image.asset(
                      "assets/images/logoorg.png",
                    )),


                ConstrainedBox(
                    constraints: BoxConstraints(maxHeight: 70),
                    child: _otpField()),

                Container(
                  margin: EdgeInsets.only(top: 20),
                  width: 300,
                  child: RaisedButton(
                    textColor: Colors.white,
                    color: Color.fromRGBO(154, 197, 94,1),
                    padding: EdgeInsets.all(14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    onPressed: () {

                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ChangePasswordPage()));
                      // final loginForm = _key.currentState;

                      //     if (loginForm.validate()) {
                      //       loginForm.save();
                      //       login();
                      //       // getFunction();

                      //       // Navigator.pop(context);
                      //     } else {
                      //       print("rrrrrrr");
                      //     }

                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>DashboardPage()));
                    },
                    child: Text(
                      'Send',
                      style: TextStyle(
                          fontStyle: FontStyle.normal, fontSize: 18.0),
                    ),
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Theme _otpField() {
    return Theme(
      data: ThemeData(
        primaryColor: Color.fromRGBO(154, 197, 94,1),
        // primaryColorDark:Color.fromRGBO(238, 28, 37,1),
      ),
      child: TextFormField(
        style: TextStyle(color: Colors.black),
        onSaved: (val) => otp = val,
        validator: (val) {
          return val.length < 1 ? "Required" : null;
        },
        onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
        textInputAction: TextInputAction.next,
        // autofocus: false,
        obscureText: false,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            labelText: "Otp",
            hintText: "Otp",
            hintStyle: TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
            contentPadding:
            new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            counterText: ' ',
            //prefixIcon:Icon(Icons.email,color: Colors.black,) ,

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
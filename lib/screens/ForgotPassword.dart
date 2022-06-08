
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
  String email, password;
  ProgressDialog pr;
  bool _passwordVisible=false;

@override
  void initState() {
    super.initState();
    _passwordVisible = false;
  }

    void login() async {
    setState(() {
      pr.show();
    });
    var body = ({
      "email": email.toString(),
      "password":password.toString(),
    });

    String link = "https://5etwal.ouctus-platform.com/api/login";
    var response = await http.post(Uri.encodeFull(link), body: body);

    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      var status = data["status"];
      var message = data["message"];
      var uid = data["data"]["id"];
      print("uid-------------------------$uid");
      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      sharedPreferences.setString("userid", data["data"]["id"].toString());
      // store1 = sharedPreferences.getString("userid");
      // print("user id-----------------------------------------------------------------------" +"$store1");


      print("respopnse body---------$data");
      print("respopnse body---------$status");
      print("respopnse body---------$message");
      if (status == true) {
        setState(() {
          pr.hide();
        });
 
        Fluttertoast.showToast(
            msg: "Login Successfully",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.blue[200],
            textColor: Colors.black,
            fontSize: 16.0);
            // Navigator.push(context, MaterialPageRoute(builder: (context)=>DashboardPage()));
      } else {
        setState(() {
          pr.hide();
        });
        Fluttertoast.showToast(
            msg: message,
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
  }
  @override
  Widget build(BuildContext context) {
  pr = new ProgressDialog(context, type: ProgressDialogType.Normal);
   return Scaffold(
     appBar: AppBar(
        title: Text("FORGOT PASSWORD"),
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
                    child: _emailField()),
               
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

    Theme _emailField() {
    return Theme(
      data: ThemeData(
            primaryColor: Color.fromRGBO(154, 197, 94,1),
            // primaryColorDark:Color.fromRGBO(238, 28, 37,1),
          ), 
          child: TextFormField(
             style: TextStyle(color: Colors.black),
        onSaved: (val) => email = val,
        validator: (val) {
          return val.length < 1 ? "Required" : null;
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
            prefixIcon:Icon(Icons.email,color: Colors.black,) ,
          
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
      data:  ThemeData(
            primaryColor:Color.fromRGBO(154, 197, 94,1),
            // primaryColorDark: Colors.red,
          ),
          child: TextFormField(
             style: TextStyle(color: Colors.black),
        onSaved: (val) => password = val,
        validator: (val) {
          return val.length < 1 ? "Required" : null;
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
            prefixIcon : Icon(Icons.lock_outline,color: Colors.black,),
             suffixIcon: IconButton(
            icon: Icon(
              // Based on passwordVisible state choose the icon
               _passwordVisible
               ? Icons.visibility
               : Icons.visibility_off,
               color:Colors.black
               ),
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
import 'dart:convert';
import 'package:adl_app/screens/Home.dart';
import 'package:adl_app/screens/Login.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:progress_dialog/progress_dialog.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  GlobalKey<FormState> _key = new GlobalKey();
  DateTime selectedDate = DateTime.now();
  TextEditingController _date = new TextEditingController();
  var formattedDate;
  ProgressDialog pr;
  bool _validate = false;
  String name,email, gender,username, password,age,phoneNumber,confirmPassword;
  String _selectedLocation;
  List<String> _locations = ['Male', 'Female'];
  List list_gender;
  bool isDataLoaded = false;
  bool _passwordVisible=false;
  bool _isLoading = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  bool _showPassword = false;

  @override
  void initState() {
    super.initState();
  }
  Future<void> registerUser() async {
    setState(() {
      pr.show();
    });
    var body = {"password_confirmation": confirmPassword.toString(),
      "first_name": username.toString(),
      "email": email.toString(),
      "phone": phoneNumber.toString(),
      "password": password.toString(),};
    String url = "http://adlteaforlife.com/api/auth/create";
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var jsonResponse;
    var response = await http.post(url, body: body);
    if (response.statusCode == 200) {
      jsonResponse = json.decode(response.body);
      print("response statusCode ${response.statusCode}");
      print("body$jsonResponse");
      print("response body ${jsonResponse["token"]}");
      if (jsonResponse != null) {
        setState(() {
          _isLoading = false;
        });

        var token1 = sharedPreferences.setString(
            "token", jsonResponse["token"].toString());

        print(token1);
        var token2 = sharedPreferences.getString("token");
        print(token2);
        Fluttertoast.showToast(
            msg: "Registered Successfully",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.blue[200],
            textColor: Colors.black,
            fontSize: 16.0);
        //Navigator.push(context, MaterialPageRoute(builder: (context)=> BottomNavigationBarPage()));
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
                builder: (BuildContext context) => HomePage()),
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
    }}
  @override
  Widget build(BuildContext context) {
    pr = new ProgressDialog(context, type: ProgressDialogType.Normal);
    return new Scaffold(
        resizeToAvoidBottomPadding: true,
        body: Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
                child: new Form(
              key: _key,
              autovalidate: _validate,
              child: Padding(
                padding: EdgeInsets.only(top: 20),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 20),
                        child: Image.asset(
                          "assets/images/logoorg.png",
                        )),
                    SizedBox(height: 20),
                    ConstrainedBox(
                        constraints: BoxConstraints(maxHeight: 70),
                        child: _nameField()),
                    SizedBox(height: 10),
                    ConstrainedBox(
                        constraints: BoxConstraints(maxHeight: 70),
                        child: _mobileField()),
                    SizedBox(height: 5),
                    ConstrainedBox(
                        constraints: BoxConstraints(maxHeight: 70),
                        child: _emailField()),
                    SizedBox(height: 5),
                    ConstrainedBox(
                        constraints: BoxConstraints(maxHeight: 70),
                        child: _passwordField()),
                    SizedBox(height: 5),
                    ConstrainedBox(
                        constraints: BoxConstraints(maxHeight: 70),
                        child: _confirmpasswordField()),
                    SizedBox(height: 20),
                    Container(
                      width: 330,
                      child: RaisedButton(
                        textColor: Colors.white,
                        color: Color.fromRGBO(154, 197, 94,1),
                        padding: EdgeInsets.all(14),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            ),
                        onPressed: () {
                          final loginForm = _key.currentState;
                          if (loginForm.validate()) {
                            loginForm.save();
                            registerUser();
                          } else {
                            print("rrrrrrr");
                          }
                        },
                        child: Text(
                          'Register',
                          style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontSize: 18.0,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Already have an account?Please",
                          style: TextStyle(
                              fontFamily: "CerebriSans-Medium",
                              color: Colors.grey),
                        ),
                        InkWell(
                          onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                      },
                          child: Text(" Sign In",
                              style: TextStyle(
                                  color:Color.fromRGBO(154, 197, 94,1),
                                  decoration: TextDecoration.underline,
                                  // color: Color(0xFF5d74e3),
                                  fontFamily: "CerebriSans-Bold")),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
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
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ))));
  }



  Theme _nameField() {
    return Theme(
      data: ThemeData(
            primaryColor: Color.fromRGBO(154, 197, 94,1),
            // primaryColorDark:Color.fromRGBO(238, 28, 37,1),
          ),
          child: TextFormField(
             style: TextStyle(color: Colors.black),
        onSaved: (val) => name = val,
        validator: (val) {
          return val.length < 1 ? "Enter your name" : null;
        },
         onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
        textInputAction: TextInputAction.next,
        obscureText: false,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            labelText: "Name",
            hintText: "Name",
             hintStyle: TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
            contentPadding:
                new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            counterText: ' ',
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

  Theme _mobileField() {
    return Theme(
      data: ThemeData(
            primaryColor: Color.fromRGBO(154, 197, 94,1),
            // primaryColorDark:Color.fromRGBO(238, 28, 37,1),
          ),
          child: TextFormField(
             style: TextStyle(color: Colors.black),
        onSaved: (val) => name = val,
        validator: (val) {
          return val.length < 10 ? "Enter your number" : null;
        },
         onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
        textInputAction: TextInputAction.next,
        obscureText: false,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            labelText: "Mobile Number",
            hintText: "Mobile Number",
             hintStyle: TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
            contentPadding:
                new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            counterText: ' ',
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

  Theme _emailField() {
    return Theme(
      data: ThemeData(
            primaryColor:Color.fromRGBO(154, 197, 94,1),
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
            primaryColor: Color.fromRGBO(154, 197, 94,1),
            // primaryColorDark:Color.fromRGBO(238, 28, 37,1),
          ),
          child: TextFormField(
             style: TextStyle(color: Colors.black),
        onSaved: (val) => password = val,
        validator: (val) {
          return val.length < 8 ? "Enter your password" : null;
        },
        onFieldSubmitted: (_) => FocusScope.of(context).unfocus(),
        textInputAction: TextInputAction.done,
        obscureText: !_passwordVisible,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            labelText: "Password",
            hintText: "Password",
             hintStyle: TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
            
            contentPadding:
                new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            counterText: ' ',
            labelStyle: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
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

   Theme _confirmpasswordField() {
    return Theme(
      data: ThemeData(
            primaryColor: Color.fromRGBO(154, 197, 94,1),
            // primaryColorDark:Color.fromRGBO(238, 28, 37,1),
          ),
          child: TextFormField(
             style: TextStyle(color: Colors.black),
        onSaved: (val) => password = val,
        validator: (val) {
          return val.length < 8 ? "Enter your password" : null;
        },
        onFieldSubmitted: (_) => FocusScope.of(context).unfocus(),
        textInputAction: TextInputAction.done,
        obscureText: !_passwordVisible,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            labelText: "Confirm Password",
            hintText: "Confirm Password",
             hintStyle: TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
            
            contentPadding:
                new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            counterText: ' ',
            labelStyle: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
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

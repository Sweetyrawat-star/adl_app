
import 'package:adl_app/screens/ForgotPassword.dart';
import 'package:adl_app/screens/Home.dart';
import 'package:adl_app/screens/Register.dart';
import 'package:adl_app/screens/delay_animation.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class LoginScreenPage extends StatefulWidget {
  @override
  _LoginScreenPageState createState() => _LoginScreenPageState();
}

class _LoginScreenPageState extends State<LoginScreenPage> with SingleTickerProviderStateMixin {
  final int delayedAmount = 500;
  double _scale;
  AnimationController _controller;
  GlobalKey<FormState> _key = new GlobalKey();
  String email, password;
  bool _passwordVisible=false;
  @override
  void initState() {
    _passwordVisible = false;
    _controller = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 200,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
      setState(() {});
    });
    super.initState();
  }
  @override
  void dispose(){
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final color = Colors.white;
    _scale = 1 - _controller.value;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
         // backgroundColor: Color(0xFF8185E2),
          body: Container(
            padding: EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height,
            width:  MediaQuery.of(context).size.width,
            child: Column(
              children: <Widget>[
                DelayedAnimation(
                  child: Container(
                      margin: EdgeInsets.only(
                        top: 50,
                      ),
                      height: 150,
                      width: 200,
                      child: Image.asset(
                        "assets/images/logoorg.png",
                      )),
                  delay: delayedAmount + 1000,
                ),
                DelayedAnimation(
                  child: ConstrainedBox(
                      constraints: BoxConstraints(maxHeight: 70),
                      child: _emailField()),
                  delay: delayedAmount + 2000,
                ),
                /*SizedBox(
                  height: 30.0,
                ),*/
                DelayedAnimation(
                  child: ConstrainedBox(
                      constraints: BoxConstraints(maxHeight: 70),
                      child: _passwordField()),
                  delay: delayedAmount + 3000,
                ),
                DelayedAnimation(
                  child:  Container(
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

                        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
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
                        'LOG IN',
                        style: TextStyle(
                            fontStyle: FontStyle.normal, fontSize: 18.0),
                      ),
                    ),
                  ),
                  delay: delayedAmount + 3000,
                ),
                SizedBox(
                  height: 10.0,
                ),
                DelayedAnimation(
                  child:InkWell(
                    onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPasswordPage()));},
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Poppins-Medium",
                          fontSize: 15),
                    ),
                  ),
                  delay: delayedAmount + 4000,
                ),
                SizedBox(height: 10.0,),
                DelayedAnimation(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                            fontFamily: "CerebriSans-Medium",
                            color: Colors.grey),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterPage()));
                        },
                        child: Text(" Sign Up",
                            style: TextStyle(
                                color: Color.fromRGBO(154, 197, 94,1),
                                fontSize: 15,
                                decoration: TextDecoration.underline,
                                // color: Color(0xFF5d74e3),
                                fontFamily: "CerebriSans-Bold")),
                      )
                    ],
                  ),
                  delay: delayedAmount + 5000,
                ),
              ],
            ),
          )
        //  Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: <Widget>[
        //     Text('Tap on the Below Button',style: TextStyle(color: Colors.grey[400],fontSize: 20.0),),
        //     SizedBox(
        //       height: 20.0,
        //     ),
        //      Center(

        //   ),
        //   ],

        // ),
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

  Widget get _animatedButtonUI => Container(
    height: 60,
    width: 270,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(100.0),
      color: Colors.white,
    ),
    child: Center(
      child: Text(
        'Hi Reflectly',
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          color: Color(0xFF8185E2),
        ),
      ),
    ),
  );

  void _onTapDown(TapDownDetails details) {
    _controller.forward();
  }

  void _onTapUp(TapUpDetails details) {
    _controller.reverse();
  }
}



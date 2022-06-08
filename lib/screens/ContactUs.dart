import 'package:adl_app/screens/Home.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:progress_dialog/progress_dialog.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ContactUsPage extends StatefulWidget {
  @override
  _ContactUsPageState createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
  
  GlobalKey<FormState> _key = new GlobalKey();
  DateTime selectedDate = DateTime.now();
  TextEditingController _date = new TextEditingController();
  var formattedDate;
  ProgressDialog pr;
  bool _validate = false;
  String name,email, gender,username, password,age;
  String _selectedLocation;
  List<String> _locations = ['Male', 'Female'];
  List list_gender;
  bool isDataLoaded = false;
  bool _passwordVisible=false;


    void register() async {
    setState(() {
      pr.show();
    });
    var body = ({
      "name":name.toString(),
      "username": username.toString(),
      "email": email.toString(),
      "gender": _selectedLocation.toString(),
      "password": password.toString(),
      "age": formattedDate.toString()
    });

    String link = "https://5etwal.ouctus-platform.com/public/api/register";
    var response = await http.post(Uri.encodeFull(link), body: body);

    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      var status = data["status"];
      var message = data["message"];
      
      // store1 = sharedPreferences.getString("userid");
      // print("user id-----------------------------------------------------------------------" +"$store1");

      print("respopnse body---------$data");
      print("respopnse body---------$status");
      print("respopnse body---------$message");
      print("bbbbbbbbbbbbbbbbbbbbbb body---------$body");
      if (status == true) {
        setState(() {
          pr.hide();
        });
         var uid = data["data"]["id"];
      print("uid-------------------------$uid");
      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      sharedPreferences.setString("userid", data["data"]["id"].toString());

        Fluttertoast.showToast(
            msg: "Registered Successfully",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.blue[200],
            textColor: Colors.black,
            fontSize: 16.0);
            // Navigator.push(context, MaterialPageRoute(builder: (context)=>EditProfilePage()));
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
    return new Scaffold(
        resizeToAvoidBottomPadding: true,
           appBar: AppBar(
        backgroundColor: Color.fromRGBO(154, 197, 94, 1),
        title: Text("Contact Us"),
        actions: [
          IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.shopping_basket,
                color: Colors.white,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ), 
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                   
                    SizedBox(height: 20),
                    ConstrainedBox(
                        constraints: BoxConstraints(maxHeight: 70),
                        child: _nameField()),
                    ConstrainedBox(
                        constraints: BoxConstraints(maxHeight: 70),
                        child: _emailField()),
                    ConstrainedBox(
                        constraints: BoxConstraints(maxHeight: 70),
                        child: _subjectField()),
                    ConstrainedBox(
                        constraints: BoxConstraints(maxHeight: 160),
                        child: _msgField()),
                    Center(
                      child: Container(
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
                          //  final loginForm = _key.currentState;

                          //   if (loginForm.validate()) {
                          //     loginForm.save();
                          //     register();
                          //     // getFunction();

                          //     // Navigator.pop(context);
                          //   } else {
                          //     print("rrrrrrr");
                          //   }

                          },
                          child: Text(
                            'Submit',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontSize: 18.0,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                     Text(
                          "Contact Address",
                          style: TextStyle(
                              fontFamily: "CerebriSans-Medium",
                              color: Colors.black,fontSize:18),
                        ),
                         SizedBox(height: 20),
                         Container(
                                
                                 height: 20,
                                 width: 100,
                                 child: Text(
                          "Our Address",
                          style: TextStyle(
                              fontFamily: "CerebriSans-Medium",
                              color: Colors.black,fontSize: 16),
                        ),
                               ), 
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                               
                        Container(
                          width: 200,
                          height: 40,
                                                  child: Text(
                            "1364 Oberry Hoover Road Orlando, Florida 32825",
                            style: TextStyle(
                                fontFamily: "CerebriSans-Medium",
                                color: Colors.grey),
                          ),
                        ),  
                              ],
                            ),
                            Column(
                              children: [
                               Text(
                          "Phone Number",
                          style: TextStyle(
                              fontFamily: "CerebriSans-Medium",
                              color: Colors.black,fontSize: 16),
                        ),  
                        Text(
                          "407-405-6313",
                          style: TextStyle(
                              fontFamily: "CerebriSans-Medium",
                              color: Colors.grey),
                        ),  
                              ],
                            )
                          ],
                        ),
                        Text(
                          "Email Address",
                          style: TextStyle(
                              fontFamily: "CerebriSans-Medium",
                              color: Colors.black,fontSize: 18),
                        ),  
                        Text(
                          "info@adlusashpo.com",
                          style: TextStyle(
                              fontFamily: "CerebriSans-Medium",
                              color: Colors.grey),
                        ),
                        Text(
                          "Sales@adlusashpo.com",
                          style: TextStyle(
                              fontFamily: "CerebriSans-Medium",
                              color: Colors.grey),
                        ), 
                        SizedBox(height: 20),  
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
          return val.length < 1 ? "Required" : null;
        },
         onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
        textInputAction: TextInputAction.next,
        obscureText: false,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            labelText: "Your Name",
            hintText: "Your Name",
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
          return val.length < 1 ? "Required" : null;
        },
         onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
        textInputAction: TextInputAction.next,
        obscureText: false,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            labelText: "Your Email Address",
            hintText: "Your Email Address",
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

 
  Theme _subjectField() {
    return Theme(
      data: ThemeData(
            primaryColor: Color.fromRGBO(154, 197, 94,1),
            // primaryColorDark:Color.fromRGBO(238, 28, 37,1),
          ),
          child: TextFormField(
             style: TextStyle(color: Colors.black),
        onSaved: (val) => name = val,
        validator: (val) {
          return val.length < 1 ? "Required" : null;
        },
         onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
        textInputAction: TextInputAction.next,
        obscureText: false,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            labelText: "Subject",
            hintText: "Subject",
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

  Theme _msgField() {
    return Theme(
      data: ThemeData(
            primaryColor: Color.fromRGBO(154, 197, 94,1),
            // primaryColorDark:Color.fromRGBO(238, 28, 37,1),
          ),
          child: TextFormField(
             style: TextStyle(color: Colors.black),
        onSaved: (val) => password = val,
        validator: (val) {
          return val.length < 1 ? "Required" : null;
        },
        onFieldSubmitted: (_) => FocusScope.of(context).unfocus(),
        textInputAction: TextInputAction.done,
        obscureText: !_passwordVisible,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            labelText: "Type Your message here",
            hintText: "Type Your message here",
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
}
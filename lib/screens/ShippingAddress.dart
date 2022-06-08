import 'dart:convert';
import 'package:adl_app/screens/Checkout.dart';
import 'package:adl_app/screens/CustomStepIndicator.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:progress_dialog/progress_dialog.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:steps_indicator/steps_indicator.dart';

class ShippingAddress extends StatefulWidget {
  @override
  _ShippingAddressState createState() => _ShippingAddressState();
}

class _ShippingAddressState extends State<ShippingAddress> {
  final List<String> titles = [
    "Cart",
    "Information",
    "Shipping",
    "Payment",
  ];
  final stepIcons = [
    Icons.shopping_cart,
    Icons.info_rounded,
    Icons.local_shipping,
    Icons.payment,
  ];
  int _curStep = 3;

  GlobalKey<FormState> _key = new GlobalKey();
  DateTime selectedDate = DateTime.now();
  TextEditingController _date = new TextEditingController();
  var formattedDate;
  ProgressDialog pr;
  bool _validate = false;
  String name,email, gender,username, password,age;
  String _selectedLocation;
  List<String> _locations = ['1', '2'];
  List list_gender;
  bool isDataLoaded = false;
  bool _passwordVisible=false;
    int selectedStep = 0;
  int nbSteps = 5;

  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
   
  }

  //   Future<void> getListing() async {
  //   String link = "https://5etwal.ouctus-platform.com/public/api/genders";
  //   var response = await http.get(Uri.encodeFull(link),);

  //   if (response.statusCode == 200) {
  //     var data = json.decode(response.body);
  //     print("getListing body---------------$data");
      
     

  //     setState(() {
  //       list_gender = data["data"];
  //       print("getListing databody---------------$list_gender");
  //       isDataLoaded = true;
  //     });
  //   } else {
  //     print("error");
  //   }

  //   return "list";
  // }

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
        title: Text("SHIPPING"),
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
                padding: EdgeInsets.only(top: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _curStep;
                        });
                      },
                      child: StepProgressView(
                        icons: stepIcons,
                        width: MediaQuery.of(context).size.width,
                        curStep: _curStep,
                        color: Color.fromRGBO(154, 197, 94, 1),
                        titles: titles,
                        onStepContinue: () {
                          setState(() {
                            if (_curStep < stepIcons.length - 1) {
                              _curStep = _curStep + 1;
                            } else {
                              _curStep = 0;
                            }
                          });
                        },
                        onStepCancel: () {
                          setState(() {
                            if (_curStep > 0) {
                              _curStep = _curStep - 1;
                            } else {
                              _curStep = 0;
                            }
                          });
                        },
                      ),
                    ),

           SizedBox(height: 20),
                   
                  

                     Text("Customer & shipping information",
                            style: TextStyle(
                                color:Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                fontFamily: "CerebriSans-Bold")),
                                SizedBox(height: 10),
                    ConstrainedBox(
                        constraints: BoxConstraints(maxHeight: 70),
                        child: _emailField()),
                        Text("Shipping Address",
                            style: TextStyle(
                                color:Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                fontFamily: "CerebriSans-Bold")),
                                SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: ConstrainedBox(
                                constraints: BoxConstraints(maxHeight: 70),
                                child: _firstnameField()),
                          ),
                          SizedBox(width: 10,),
                              Flexible(
                                child: ConstrainedBox(
                                constraints: BoxConstraints(maxHeight: 70),
                                child: _lastnameField()),
                              ),
                        ],
                      ),
                    ConstrainedBox(
                        constraints: BoxConstraints(maxHeight: 70),
                        child: _companyField()),
                    ConstrainedBox(
                        constraints: BoxConstraints(maxHeight: 70),
                        child: _addressField()),
                    ConstrainedBox(
                        constraints: BoxConstraints(maxHeight: 70),
                        child: _apartmentField()),
                         ConstrainedBox(
                        constraints: BoxConstraints(maxHeight: 70),
                        child: _cityField()),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Flexible(child:   Container(
                      padding: EdgeInsets.only(left: 10, right: 20),
                      child: DropdownButton(
                        dropdownColor: Colors.grey,
                          hint: Text(
                            'Country',
                            style: TextStyle(color: Colors.black),
                          ), // Not necessary for Option 1
                          value: _selectedLocation,
                          style: TextStyle(color: Colors.white,fontSize: 15),
                          isExpanded: true,
                          iconSize: 30,
                          underline: Container(
                            height: 1.0,
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: Colors.transparent,
                                        width: 0.0))),
                          ),
                          onChanged: (newValue) {
                                setState(() {
                                  _selectedLocation = newValue;
                                });
                              },
                              items: _locations.map(( location) {
                                    return DropdownMenuItem(

                                      child: new Text(location),
                                       value: location,
                                    );
                                  }).toList(),
                                  
                            ),
                          
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.black),
                          borderRadius: BorderRadius.circular(25)),
                    ),),
                    SizedBox(width: 10),
                     Flexible(child:   Container(
                      padding: EdgeInsets.only(left: 10, right: 20),
                      child: DropdownButton(
                        dropdownColor: Colors.grey,
                          hint: Text(
                            'State',
                            style: TextStyle(color: Colors.black),
                          ), // Not necessary for Option 1
                          value: _selectedLocation,
                          style: TextStyle(color: Colors.white,fontSize: 15),
                          isExpanded: true,
                          iconSize: 30,
                          underline: Container(
                            height: 1.0,
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: Colors.transparent,
                                        width: 0.0))),
                          ),
                          onChanged: (newValue) {
                                setState(() {
                                  _selectedLocation = newValue;
                                });
                              },
                              items: _locations.map(( location) {
                                    return DropdownMenuItem(

                                      child: new Text(location),
                                       value: location,
                                    );
                                  }).toList(),
                                  
                            ),
                          
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.black),
                          borderRadius: BorderRadius.circular(25)),
                    ),),
                        ],),

                        SizedBox(height: 20),
                        ConstrainedBox(
                        constraints: BoxConstraints(maxHeight: 70),
                        child: _pincodeField()),
                        ConstrainedBox(
                        constraints: BoxConstraints(maxHeight: 70),
                        child: _mobileField()),

                         Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                       Icon(Icons.arrow_back_ios),
                        Text("Return to cart",
                            style: TextStyle(
                                color:Color.fromRGBO(154, 197, 94,1),
                                decoration: TextDecoration.underline,
                                // color: Color(0xFF5d74e3),
                                fontFamily: "CerebriSans-Bold"))
                      ],
                    ),
                    SizedBox(height: 10),
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
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckoutPage()));
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
                            'Continue',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontSize: 18.0,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                   
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ))));
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
            labelText: "Email",
            hintText: "Email",
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


  Theme _firstnameField() {
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
            labelText: "First Name",
            hintText: "First Name",
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

  Theme _lastnameField() {
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
            labelText: "Last Name",
            hintText: "Last Name",
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

    Theme _companyField() {
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
            labelText: "Company",
            hintText: "Company",
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

    Theme _addressField() {
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
            labelText: "Address",
            hintText: "Address",
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

    Theme _apartmentField() {
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
            labelText: "Apatment",
            hintText: "Apartment",
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

    Theme _cityField() {
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
            labelText: "City",
            hintText: "City",
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

    Theme _pincodeField() {
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
            labelText: "PIN code",
            hintText: "PIN code",
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
          return val.length < 1 ? "Required" : null;
        },
         onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
        textInputAction: TextInputAction.next,
        obscureText: false,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            labelText: "Phone",
            hintText: "Phone",
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
    /*StepsIndicator(
    selectedStep: selectedStep,
    nbSteps:5,
    doneLineColor: Colors.green,
    doneStepColor: Colors.green,
    undoneLineColor: Colors.green,
    lineLength: 20,
    unselectedStepSize: 30,
    selectedStepSize: 30,
    lineLengthCustomStep: [
    StepsIndicatorCustomLine(nbStep: 1, lenght: 105)
    ],
    ),*/
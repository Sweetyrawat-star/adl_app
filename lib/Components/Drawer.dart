
import 'dart:io';

import 'package:adl_app/screens/Aboutus.dart';
import 'package:adl_app/screens/Article.dart';
import 'package:adl_app/screens/ContactUs.dart';
import 'package:adl_app/screens/Faq.dart';
import 'package:adl_app/screens/HealthyRecipes.dart';
import 'package:adl_app/screens/Login.dart';
import 'package:adl_app/screens/Notification.dart';
import 'package:adl_app/screens/PrivacyPolicy.dart';
import 'package:adl_app/screens/RefundPolicy.dart';
import 'package:adl_app/screens/ResetPassword.dart';
import 'package:adl_app/screens/ShippingPolicy.dart';
import 'package:adl_app/sharedpreference/store.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:progress_dialog/progress_dialog.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DrawerPage extends StatefulWidget {
  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  bool isDataLoaded = false;
  List profiledata;
  ProgressDialog pr;

  @override
  void initState() {
    super.initState();
  }

  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: <Color>[
                Colors.green,
                 Color.fromRGBO(154, 197, 94,1),
              ])),
              child: Container(
                padding: EdgeInsets.only(top: 50),
                child: Column(
                  children: [
                    Text("Jone Deo",style: TextStyle(color: Colors.white,fontSize: 22),),
                    Text("jonedeo@gmail.com",style: TextStyle(color: Colors.white,fontSize: 22),),
                  ],
                ),
                 )),
          CustomListTile(Icons.home, 'Home', () => {}),
          CustomListTile(
              Icons.person,
              'Shop',
              () => {
                    // Navigator.push(context,MaterialPageRoute(builder: (context) => EditProfilePage()))
                  }),
          CustomListTile(
              Icons.bookmark,
              'About us',
              () => {
                     Navigator.push(context,MaterialPageRoute(builder: (context) => AboutusPage()))
                  }),
        
          CustomListTile(
              Icons.notifications,
              'Notifications',
              () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NotificationPage()))
                  }),
                   CustomListTile(
              Icons.lock,
              'Reset Password',
              () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ResetPasswordPage()))
                  }),
         ExpansionTile(
           title: Row(
             children: <Widget>[
               Icon(Icons.help,color: Colors.grey,),
               Padding(
                 padding: const EdgeInsets.only(left:10),
                 child: Text("Policies",style: TextStyle(fontSize: 16),),
               ),
             ],
           ),
           children: <Widget>[

              InkWell(
                onTap: (){
                    // Navigator.pop(ctxt);
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (ctxt) => PrivacyPolicyPage()));
                },
                              child: Padding(
                           padding: const EdgeInsets.only(left:25,bottom: 15),
                           child: Row(
             children: <Widget>[
                 Icon(Icons.person,color: Colors.grey,size: 18,),
                 Padding(
                   padding: const EdgeInsets.only(left:15),
                   child: Text("Privacy",style: TextStyle(fontSize: 14,color: Colors.grey),),
                 ),
             ],
           ),
                         ),
              ),
                
                       InkWell(
                         onTap:(){  
                          //  Navigator.pop(ctxt),
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (ctxt) => ShippingPolicyPage()));},
                                                child: Padding(
                           padding: const EdgeInsets.only(left: 25,bottom: 15),
                           child: Row(
             children: <Widget>[
               Icon(Icons.assignment_ind,color: Colors.grey,size: 18),
               Padding(
                 padding: const EdgeInsets.only(left:15),
                 child: Text("Shipping",style: TextStyle(fontSize: 14,color: Colors.grey),),
               ),
             ],
           ),
                         ),
                       ),
                        InkWell(
                         onTap:(){  
                          //  Navigator.pop(ctxt),
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (ctxt) => RefundPolicyPage()));},
                                                child: Padding(
                           padding: const EdgeInsets.only(left: 25,bottom: 15),
                           child: Row(
             children: <Widget>[
               Icon(Icons.assignment_ind,color: Colors.grey,size: 18),
               Padding(
                 padding: const EdgeInsets.only(left:15),
                 child: Text("Refunds",style: TextStyle(fontSize: 14,color: Colors.grey),),
               ),
             ],
           ),
                         ),
                       ),
                                 
                              
                   
                ]
         ),
           ExpansionTile(
           title: Row(
             children: <Widget>[
               Icon(Icons.help,color: Colors.grey,),
               Padding(
                 padding: const EdgeInsets.only(left:10),
                 child: Text("Help and Support",style: TextStyle(fontSize: 16),),
               ),
             ],
           ),
           children: <Widget>[

              InkWell(
                onTap: (){
                    // Navigator.pop(ctxt);
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (ctxt) => FaqPage()));
                },
                              child: Padding(
                           padding: const EdgeInsets.only(left:25,bottom: 15),
                           child: Row(
             children: <Widget>[
                 Icon(Icons.person,color: Colors.grey,size: 18,),
                 Padding(
                   padding: const EdgeInsets.only(left:15),
                   child: Text("FAQ's",style: TextStyle(fontSize: 14,color: Colors.grey),),
                 ),
             ],
           ),
                         ),
              ),
                
                       InkWell(
                         onTap:(){  
                          //  Navigator.pop(ctxt),
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (ctxt) => ContactUsPage()));},
                                                child: Padding(
                           padding: const EdgeInsets.only(left: 25,bottom: 15),
                           child: Row(
             children: <Widget>[
               Icon(Icons.assignment_ind,color: Colors.grey,size: 18),
               Padding(
                 padding: const EdgeInsets.only(left:15),
                 child: Text("Contact Us",style: TextStyle(fontSize: 14,color: Colors.grey),),
               ),
             ],
           ),
                         ),
                       ),
                                 
                              
                   
                ]
         ),  
          ExpansionTile(
           title: Row(
             children: <Widget>[
               Icon(Icons.help,color: Colors.grey,),
               Padding(
                 padding: const EdgeInsets.only(left:10),
                 child: Text("All Articles",style: TextStyle(fontSize: 16),),
               ),
             ],
           ),
           children: <Widget>[

              InkWell(
                onTap: (){
                    // Navigator.pop(ctxt);
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (ctxt) => ArticlePage()));
                },
                              child: Padding(
                           padding: const EdgeInsets.only(left:25,bottom: 15),
                           child: Row(
             children: <Widget>[
                 Icon(Icons.person,color: Colors.grey,size: 18,),
                 Padding(
                   padding: const EdgeInsets.only(left:15),
                   child: Text("All Articles",style: TextStyle(fontSize: 14,color: Colors.grey),),
                 ),
             ],
           ),
                         ),
              ),
                
                       InkWell(
                         onTap:(){  
                          //  Navigator.pop(ctxt),
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (ctxt) => HealthyRecipePage()));},
                                                child: Padding(
                           padding: const EdgeInsets.only(left: 25,bottom: 15),
                           child: Row(
             children: <Widget>[
               Icon(Icons.assignment_ind,color: Colors.grey,size: 18),
               Padding(
                 padding: const EdgeInsets.only(left:15),
                 child: Text("Healthy Recipes",style: TextStyle(fontSize: 14,color: Colors.grey),),
               ),
             ],
           ),
                         ),
                       ),
                                 
                              
                   
                ]
         ),                
          // CustomListTile(Icons.help, 'Help and Support', () => {}),
          // CustomListTile(Icons.help, 'Articles', () => { Navigator.push(
          //               context,
          //               MaterialPageRoute(
          //                   builder: (context) => ArticlePage()))}),
          CustomListTile(
              Icons.settings, 'Log Out', () => {showAlertDialog(context)}),
        ],
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    Future<void> onLogoutClicked() async {

      SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
      sharedPreferences.clear();
     // NetworkUtil().bearerToken();
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginPage(),
          ));
    }

    Widget cancelButton = FlatButton(
      child: Text(
        "Cancel",
        style: TextStyle(
          color: Color.fromRGBO(154, 197, 94,1),
        ),
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );
    Widget continueButton = FlatButton(
      child: Text(
        "Logout",
        style: TextStyle(color: Color.fromRGBO(154, 197, 94,1),),
      ),
      onPressed: () {
        onLogoutClicked();
        // Navigator.of(ctxt).pushReplacement(
        //       MaterialPageRoute(builder: (BuildContext context) => LoginPage()));
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Log Out App!"),
      content: Text(
        "Do you want to Log Out from the app?",
        style: TextStyle(color: Colors.grey),
      ),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}

class CustomListTile extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function onTap;

  CustomListTile(this.icon, this.text, this.onTap);
  @override
  Widget build(BuildContext context) {
    //ToDO
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
      child: Container(
        child: InkWell(
            splashColor: Color.fromRGBO(154, 197, 94,1), 
            onTap: onTap,
            child: Container(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          icon,
                          color:  Colors.grey
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                        ),
                        Text(
                          text,
                          style: TextStyle(
                              color:  Colors.black,
                              fontSize: 16),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_right,
                      color:  Color.fromRGBO(154, 197, 94,1),
                    )
                  ],
                ))),
      ),
    );
  }
}

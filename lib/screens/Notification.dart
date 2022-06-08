import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:progress_dialog/progress_dialog.dart';
import 'package:cached_network_image/cached_network_image.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {

  bool isDataLoaded = false;
  ProgressDialog pr;
  List data;

    @override
  void initState() {
    super.initState();
  }



  Future<void> getnotifications() async {
    final String url = "https://5etwal.ouctus-platform.com/api/getnotificationlist/2";
    var response = await http.get(
      Uri.encodeFull(url),
    );
    print(response.body);
    if (mounted) {
      setState(() {
        var convertDataToJson = json.decode(response.body);
        data = convertDataToJson["data"];
        print(data);
        isDataLoaded = true;
      });
    }

    return "Success";
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
       
          title: Text("Notifications"),
          actions: [
            IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
                onPressed: () {
                  
                }),
            IconButton(
                icon: Icon(
                  Icons.shopping_basket,
                  color: Colors.white,
                ),
                onPressed: () {
               
                }),
                IconButton(
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
                onPressed: () {
               
                }),
           
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
                  Color.fromRGBO(154, 197, 94,1),
                   Color.fromRGBO(154, 197, 94,1),
                ])),
          ),
        ),
        body: ListView.builder(
          shrinkWrap: true,
          controller: ScrollController(),
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.all(2.0),
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 9.0),
              child: Container(
                padding: EdgeInsets.only(left: 5, right: 5),
                height: MediaQuery.of(context).size.height*0.17,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  elevation: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 3.0,),
                          Text("General Wellness & Maintenance",style: TextStyle(fontSize:20),),
                          SizedBox(height: 2.0,),
                          Text("Shop Now",style: TextStyle(color: Colors.grey,fontSize:18),),
                          SizedBox(height: 2.0,),
                          Text("2:00 pm - 2:00 pm",style: TextStyle(color: Colors.red,fontSize:18),),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          })
    );
  }
}
import 'package:flutter/material.dart';

class SubscribeandSavePage extends StatefulWidget {
  @override
  _SubscribeandSavePageState createState() => _SubscribeandSavePageState();
}

class _SubscribeandSavePageState extends State<SubscribeandSavePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Color.fromRGBO(154, 197, 94, 1),
        title: Text("Subscribe & Save"),
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
         height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(5),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             InkWell(
               onTap: (){
                // Navigator.push(context,MaterialPageRoute(builder: (context) => ArticlesDetailPage()));
               },
               child: Container(
            height: 220.0,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/teacup.jpg"),
                      fit: BoxFit.fill)),
          ),
             ),
          SizedBox(height: 20,),
          Center(child: Text("All The Benefits No Hassle",style: TextStyle(color: Colors.black,fontSize:20),)),
          SizedBox(height: 5,),
           Center(child: Text("Built-in Convienence Built-in Savings Free Shipping.",style: TextStyle(color: Colors.black,fontSize:15),)),
          SizedBox(height: 10,),
          Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          height: 130,
                          width: 170.0,
                          child: Card(
                              elevation: 10,
                              child: Column(
                                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Image.asset(
                                    "assets/images/hot-cup.png",
                                    height: 60,
                                    width: 100,
                                  ),
                                  Text(
                                    "Save 15% on every Order",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 12),
                                  ),
                                   Text(
                                    "Not just the first order",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              )),
                        ),
                        
                        Container(
                          height: 130,
                          width: 170.0,
                          child: Card(
                              elevation: 10,
                              child: Column(
                                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Image.asset(
                                    "assets/images/truck.png",
                                    height: 60,
                                    width: 100,
                                  ),
                                  Text(
                                    "Free Shipping over \$50",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 12),
                                  ),
                                   Text(
                                    "We've got you covered",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              )),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          height: 130,
                          width: 170.0,
                          child: Card(
                              elevation: 10,
                              child: Column(
                                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Image.asset(
                                    "assets/images/date.png",
                                    height: 60,
                                    width: 100,
                                  ),
                                  Text(
                                    "Control your Schedule",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 12),
                                  ),
                                   Text(
                                    "Pick what works for you",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              )),
                        ),
                        Container(
                          height: 130,
                          width: 170.0,
                          child: Card(
                              elevation: 10,
                              child: Column(
                                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Image.asset(
                                    "assets/images/like.png",
                                    height: 60,
                                    width: 100,
                                  ),
                                  Text(
                                    "No Hassle",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 12),
                                  ),
                                   Text(
                                    "Change or create any time",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              )),
                        ),
                       
                      ],
                    ),
                  ),
                   Container(
            height: 110.0,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/cup5.jpg"),
                      fit: BoxFit.fill)),
          ),
         


          ],
        ),
        
      ), 
    );
  }
}
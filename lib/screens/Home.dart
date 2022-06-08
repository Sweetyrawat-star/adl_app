
import 'package:adl_app/Components/Drawer.dart';
import 'package:adl_app/screens/dummy_detail_screen.dart';
import 'package:adl_app/screens/list_utils.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _Pressed1 = false;
  bool _Pressed2 = false;
  bool _Pressed3 = false;
  bool _Pressed4 = false;
  bool _Pressed5 = false;
  bool _Pressed6 = false;
  bool _Pressed7 = false;
  bool _Pressed8 = false;

  List<String> data = [
    "DIABETES",
    "HEART DISEASE",
    "OBESITY",
    "PANCRAETIC CANCER",
    "NEURO ISSUE",
    "EPILEPSY",
    "ADL",
    "PARKINSONS",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
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
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                Color.fromRGBO(154, 197, 94, 1),
                Color.fromRGBO(154, 197, 94, 1),
              ])),
        ),
      ),
      drawer: DrawerPage(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: SizedBox(
                height: 200,

                //  width: double.infinity,
                child: Carousel(
                  boxFit: BoxFit.cover,
                  autoplay: false,
                  animationCurve: Curves.fastOutSlowIn,
                  animationDuration: Duration(milliseconds: 1000),
                  dotSize: 6.0,
                  dotIncreasedColor: Colors.grey,
                  dotBgColor: Colors.transparent,
                  dotPosition: DotPosition.bottomLeft,
                  dotVerticalPadding: 10.0,
                  showIndicator: true,
                  indicatorBgPadding: 2.0,
                  images: [
                    ExactAssetImage('assets/images/banner-1.jpg'),
                    ExactAssetImage('assets/images/banner-2.jpg'),
                    ExactAssetImage('assets/images/banner-3.jpg'),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                        height: 40.0,
                        width: 360.0,
                        color: Color(0xff9AC55E),
                        //color: Color.fromRGBO(154, 197, 94, 0.6),
                        child: Center(
                            child: Text(
                          "RETAIL",
                          style: TextStyle(color: Colors.white),
                        ))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                        height: 40.0,
                        width: 360.0,
                        color: Color(0xff519F10),
                        //color: Color.fromRGBO(154, 197, 94, 0.6),
                        child: Center(
                            child: Text(
                          "WHOLESALE",
                          style: TextStyle(color: Colors.white),
                        ))),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.fromLTRB(5, 0, 5, 5),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailScreen()));
                          },
                          child: Container(
                            height: 120,
                            width: 110.0,
                            child: Card(
                                elevation: 10,
                                child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Image.asset(
                                      "assets/images/ico1.png",
                                      height: 60,
                                      width: 100,
                                    ),
                                    Text(
                                      "All Natural Ingredients",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ],
                                )),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailScreen()));
                          },
                          child: Container(
                            height: 120,
                            width: 110.0,
                            child: Card(
                                elevation: 10,
                                child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Image.asset(
                                      "assets/images/ico2.png",
                                      height: 60,
                                      width: 100,
                                    ),
                                    Text(
                                      "Dairy & soy free",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ],
                                )),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailScreen()));
                          },
                          child: Container(
                            height: 120,
                            width: 110.0,
                            child: Card(
                                elevation: 10,
                                child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Image.asset(
                                      "assets/images/ico3.png",
                                      height: 60,
                                      width: 100,
                                    ),
                                    Text(
                                      "No chemical Preservative",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ],
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailScreen()));
                          },
                          child: Container(
                            height: 120,
                            width: 110.0,
                            child: Card(
                                elevation: 10,
                                child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Image.asset(
                                      "assets/images/ico4.png",
                                      height: 60,
                                      width: 100,
                                    ),
                                    Text(
                                      "No Artificial Coloring",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ],
                                )),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailScreen()));
                          },
                          child: Container(
                            height: 120,
                            width: 110.0,
                            child: Card(
                                elevation: 10,
                                child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Image.asset(
                                      "assets/images/ico5.png",
                                      height: 60,
                                      width: 100,
                                    ),
                                    Text(
                                      "No Fiillers or Additives",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ],
                                )),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailScreen()));
                          },
                          child: Container(
                            height: 120,
                            width: 110.0,
                            child: Card(
                              elevation: 10,
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Image.asset(
                                    "assets/images/ico6.png",
                                    height: 60,
                                    width: 100,
                                  ),
                                  Text(
                                    "No Fiillers or Additives",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  /*        Container(
                    color: Color.fromRGBO(71, 79, 81, 1),
                    height: 160,
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(
                        color: Color.fromRGBO(154, 197, 94, 1),
                      )),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Align(
                              alignment: Alignment.topRight,
                              child: Icon(
                                Icons.close,
                                color: Colors.white,
                              )),
                          Text(
                            "*GET FREE SHIPPING ON ORDERS OVER \$50*",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Colors.orange),
                          ),
                          Text(
                            "On order less than \$50 flat rate shipping charge of \$5.95 will apply - to anywhere within the U.S for international puchases, Please review our shipping policy.",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  ),*/
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    color: Color.fromRGBO(154, 197, 94, 0.6),
                    height: 280,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Text(
                          "Do You Suffer From:",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [Text("PAIN?"), Text("YES | NO")],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Divider(
                          height: 1,
                          color: Colors.black,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("SLEEP DEPRIVATION?"),
                            Text("YES | NO")
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Divider(
                          height: 1,
                          color: Colors.black,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("DIGESTIVE ISSUES?"),
                            Text("YES | NO")
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Divider(
                          height: 1,
                          color: Colors.black,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("TIREDNESS/FATIGUE..?"),
                            Text("YES | NO")
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Divider(
                          height: 1,
                          color: Colors.black,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("CHRONIC ILLNESSES?"),
                            Text("YES | NO")
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Divider(
                          height: 1,
                          color: Colors.black,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("NEGATIVE & DEVASTING SIDE EFFECTS?"),
                            Text("YES | NO")
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Divider(
                          height: 1,
                          color: Colors.black,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Acheiving & maintaining great health require the body's balance of these three important factors:",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              "assets/images/immuen-system.jpg",
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Immune System",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Image.asset(
                              "assets/images/circular.jpg",
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Circulatory System",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        // Column(
                        //   children: [
                        //     Image.asset(
                        //       "assets/images/circular.jpg",
                        //       width: 100,
                        //     ),
                        //     SizedBox(
                        //       height: 5,
                        //     ),
                        //     Text(
                        //       "Immune System",
                        //       style: TextStyle(
                        //           fontSize: 15, fontWeight: FontWeight.w700),
                        //     )
                        //   ],
                        // ),
                        Column(
                          children: [
                            Image.asset(
                              "assets/images/digestive.jpg",
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "digestive System",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  /*
                  Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(10),
                    color: Colors.grey[400],
                    child: Center(
                        child: Text(
                            "When any of these three systems are unbalanced and not functioning at its optimal, one will begin to experience various sorts of  PAINS or possibly even a malfunctioned NERVOUS SYSTEM \n\nWhen this happens, the result will be various illnesses that may even turn to CHRONIC ILLNESSES, such as a few common illnesses named below, among many others: ")),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      RaisedButton(
                        child: Text('Diabetes'),
                        color: Color.fromRGBO(154, 197, 94, 1),
                        textColor: Colors.white,
                        onPressed: () {},
                      ),
                      RaisedButton(
                        child: Text('Heart Disease'),
                        color: Color.fromRGBO(154, 197, 94, 1),
                        textColor: Colors.white,
                        onPressed: () {},
                      ),
                      RaisedButton(
                        child: Text('Obesity'),
                        color: Color.fromRGBO(154, 197, 94, 1),
                        textColor: Colors.white,
                        onPressed: () {},
                      ),
                    ],
                  ),*/
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "When any of these three systems are\n unbalanced and not functioning at its \n"
                          "optimal, one will begin to experience",
                          style: TextStyle(fontSize: 19),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "various sorts of ",
                              style: TextStyle(fontSize: 19),
                            ),
                            Text(
                              "PAINS",
                              style: TextStyle(
                                  color: Color(0xff9AC55E), fontSize: 19),
                            ),
                            Text(
                              " possibly even",
                              style: TextStyle(fontSize: 19),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "a malfunctioned ",
                              style: TextStyle(fontSize: 19),
                            ),
                            Text(
                              "NERVOUS SYSTEM",
                              style: TextStyle(
                                  color: Color(0xff9AC55E), fontSize: 19),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_downward_sharp,
                          color: Colors.green,
                          size: 50,
                        ),
                        Text(
                            "When this happens, the result will be \nvarious illnesses that may even turn to",style: TextStyle(
                            color: Colors.black, fontSize: 19),
                            ),
                        Row(
                          children: [
                            Text("CHRONIC ILLNESSES ",style: TextStyle(
                                color: Color(0xff9AC55E), fontSize: 19),),
                            Text("such as a few",style: TextStyle(
                                color: Colors.black ,fontSize: 19),),
                          ],
                        ),
                        Text("common illnesses named below, among many others: ",style: TextStyle(
                            color: Colors.black,fontSize: 19),),
                        SizedBox(
                          height: 20,
                        ),
                        /*Container(
                          height: 40,
                          color: Colors.white,
                          child: RaisedButton(
                            hoverColor: Color(0xff9AC55E),
                            color: Colors.green,
                            child:  Text(
                              "DIABETES",
                              style: TextStyle(
                                color:
                                    Colors.white,
                              ),
                            ),
                          ),
                        ),*/
                        Container(
                          child: Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    _Pressed1 = !_Pressed1;
                                  });
                                },
                                child: Container(
                                    height: 40.0,
                                    width: 320.0,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color(0xff9AC55E),
                                      ),
                                      color: _Pressed1
                                          ? Color(0xff9AC55E)
                                          : Colors.white,
                                    ),

                                    //color: Color.fromRGBO(154, 197, 94, 0.6),
                                    child: Center(
                                        child: Text(
                                      "DIABETES",
                                      style: TextStyle(
                                        color: _Pressed1
                                            ? Colors.white
                                            : Colors.black45,
                                      ),
                                    ))),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    _Pressed2 = !_Pressed2;
                                  });
                                },
                                child: Container(
                                    height: 40.0,
                                    width: 320.0,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color(0xff9AC55E),
                                      ),
                                      color: _Pressed2
                                          ? Color(0xff9AC55E)
                                          : Colors.white,
                                    ),

                                    //color: Color.fromRGBO(154, 197, 94, 0.6),
                                    child: Center(
                                        child: Text(
                                      "HEART DISEASE",
                                      style: TextStyle(
                                        color: _Pressed2
                                            ? Colors.white
                                            : Colors.black45,
                                      ),
                                    ))),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    _Pressed3 = !_Pressed3;
                                  });
                                },
                                child: Container(
                                    height: 40.0,
                                    width: 320.0,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color(0xff9AC55E),
                                      ),
                                      color: _Pressed3
                                          ? Color(0xff9AC55E)
                                          : Colors.white,
                                    ),

                                    //color: Color.fromRGBO(154, 197, 94, 0.6),
                                    child: Center(
                                        child: Text(
                                      "OBESITY",
                                      style: TextStyle(
                                        color: _Pressed3
                                            ? Colors.white
                                            : Colors.black45,
                                      ),
                                    ))),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    _Pressed4 = !_Pressed4;
                                  });
                                },
                                child: Container(
                                    height: 40.0,
                                    width: 320.0,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color(0xff9AC55E),
                                      ),
                                      color: _Pressed4
                                          ? Color(0xff9AC55E)
                                          : Colors.white,
                                    ),

                                    //color: Color.fromRGBO(154, 197, 94, 0.6),
                                    child: Center(
                                        child: Text(
                                      "PANCREATIC CANCER",
                                      style: TextStyle(
                                        color: _Pressed4
                                            ? Colors.white
                                            : Colors.black45,
                                      ),
                                    ))),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    _Pressed5 = !_Pressed5;
                                  });
                                },
                                child: Container(
                                    height: 40.0,
                                    width: 320.0,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color(0xff9AC55E),
                                      ),
                                      color: _Pressed5
                                          ? Color(0xff9AC55E)
                                          : Colors.white,
                                    ),

                                    //color: Color.fromRGBO(154, 197, 94, 0.6),
                                    child: Center(
                                        child: Text(
                                      "NEURO ISSUE",
                                      style: TextStyle(
                                        color: _Pressed5
                                            ? Colors.white
                                            : Colors.black45,
                                      ),
                                    ))),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    _Pressed6 = !_Pressed6;
                                  });
                                },
                                child: Container(
                                    height: 40.0,
                                    width: 320.0,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color(0xff9AC55E),
                                      ),
                                      color: _Pressed6
                                          ? Color(0xff9AC55E)
                                          : Colors.white,
                                    ),

                                    //color: Color.fromRGBO(154, 197, 94, 0.6),
                                    child: Center(
                                        child: Text(
                                      "EPILEPSY",
                                      style: TextStyle(
                                        color: _Pressed6
                                            ? Colors.white
                                            : Colors.black45,
                                      ),
                                    ))),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    _Pressed7 = !_Pressed7;
                                  });
                                },
                                child: Container(
                                    height: 40.0,
                                    width: 320.0,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color(0xff9AC55E),
                                      ),
                                      color: _Pressed7
                                          ? Color(0xff9AC55E)
                                          : Colors.white,
                                    ),

                                    //color: Color.fromRGBO(154, 197, 94, 0.6),
                                    child: Center(
                                        child: Text(
                                      "ALS",
                                      style: TextStyle(
                                        color: _Pressed7
                                            ? Colors.white
                                            : Colors.black45,
                                      ),
                                    ))),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    _Pressed8 = !_Pressed8;
                                  });
                                },
                                child: Container(
                                    height: 40.0,
                                    width: 320.0,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color(0xff9AC55E),
                                      ),
                                      color: _Pressed8
                                          ? Color(0xff9AC55E)
                                          : Colors.white,
                                    ),

                                    //color: Color.fromRGBO(154, 197, 94, 0.6),
                                    child: Center(
                                        child: Text(
                                      "PARKINSONS",
                                      style: TextStyle(
                                        color: _Pressed8
                                            ? Colors.white
                                            : Colors.black45,
                                      ),
                                    ))),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              //buildButton(),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.arrow_downward_sharp,
                          color: Colors.green,
                          size: 50,
                        ),
                        Text(
                          "CHEERS TO HEALTHY LIVING!",
                          style: TextStyle(
                              color: Colors.black,
                              letterSpacing: 1.0,
                              fontSize: 19),
                        ),
                        Text(
                          "PREVENTION IS BETTER THAN A",
                          style: TextStyle(
                              color: Colors.black,
                              letterSpacing: 1.0,
                              fontSize: 19),
                        ),
                        Text(
                          "CURE...",
                          style: TextStyle(
                              color: Colors.black,
                              letterSpacing: 1.0,
                              fontSize: 19),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "EASY AS 1, 2, 3, 4…..Let’s ALL Get Healthy!!!",
                          style: TextStyle(color: Colors.black, fontSize: 17),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "We highly recommend that you go through",
                          style: TextStyle(color: Colors.black, fontSize: 17),
                        ),
                        Text(
                          " our program in this order:",
                          style: TextStyle(color: Colors.black, fontSize: 17),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 70.0,
                          ),
                          child: Text(
                            " 1. IMMUNE SYSTEM (3 months)",
                            style:
                                TextStyle(color: Colors.black45, fontSize: 17),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 30.0, top: 10),
                          child: Text(
                            " 2. CIRCULATORY SYSTEM (3 months)",
                            style:
                                TextStyle(color: Colors.black45, fontSize: 17),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 58.0, top: 10),
                          child: Text(
                            " 3. DIGESTIVE SYSTEM (3 months)",
                            style:
                                TextStyle(color: Colors.black45, fontSize: 17),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0, top: 10),
                          child: Text(
                            " 4. GENERAL WELLNESS & MAINTENANCE",
                            style:
                                TextStyle(color: Colors.black45, fontSize: 17),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 200.0,
                          ),
                          child: Text(
                            "(on going)",
                            style:
                                TextStyle(color: Colors.black45, fontSize: 17),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Column(
                            children: [
                            buildTeaForLifeProgram(),
                            SizedBox(height: 0.0,),
                            buildSpecialTeaFormulation(),
                              buildOtherProduct(),

                          ],)
                          ),
                        ),
                      /*Container(
                        width: MediaQuery.of(context).size.width,
                        child: Card(
                            child: Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 5,
                            ),
                            Image.asset(
                              "assets/images/cup2.jpg",
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Circulatory System",
                              style: TextStyle(fontSize: 15),
                            ),
                            Text(
                              "\$39.00",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 30,
                              child: RaisedButton(
                                child: Text('Shop Now'),
                                color: Color.fromRGBO(154, 197, 94, 1),
                                textColor: Colors.white,
                                onPressed: () {},
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        )),
                      ),*/
                    ],
                  ),

                  // Row(
                  //   children: [
                  //     Container(
                  //       height: 215,
                  //       width: 170.0,
                  //       child: Card(
                  //           child: Column(
                  //         // mainAxisAlignment: MainAxisAlignment.start,
                  //         children: <Widget>[
                  //           SizedBox(
                  //             height: 5,
                  //           ),
                  //           Image.asset(
                  //             "assets/images/cup3.jpg",
                  //             height: 120,
                  //             width: 120,
                  //           ),
                  //           SizedBox(
                  //             height: 5,
                  //           ),
                  //           Text(
                  //             "Immune System",
                  //             style: TextStyle(fontSize: 15),
                  //           ),

                  //           Text(
                  //             "\$39.00",
                  //             style: TextStyle(
                  //                 fontSize: 15, fontWeight: FontWeight.w700),
                  //           ),
                  //           SizedBox(
                  //             height: 5,
                  //           ),
                  //           Container(
                  //             height: 30,
                  //             child: RaisedButton(
                  //               child: Text('Shop Now'),
                  //               color: Color.fromRGBO(154, 197, 94, 1),
                  //               textColor: Colors.white,
                  //               onPressed: () {},
                  //             ),
                  //           ),
                  //         ],
                  //       )),
                  //     ),
                  //     Container(
                  //       height: 215,
                  //       width: 170.0,
                  //       child: Card(
                  //           child: Column(
                  //         // mainAxisAlignment: MainAxisAlignment.start,
                  //         children: <Widget>[
                  //           SizedBox(
                  //             height: 5,
                  //           ),
                  //           Image.asset(
                  //             "assets/images/cup4.jpg",
                  //             height: 120,
                  //             width: 120,
                  //           ),
                  //           SizedBox(
                  //             height: 5,
                  //           ),
                  //           Text(
                  //             "Immune System",
                  //             style: TextStyle(fontSize: 15),
                  //           ),

                  //           Text(
                  //             "\$39.00",
                  //             style: TextStyle(
                  //                 fontSize: 15, fontWeight: FontWeight.w700),
                  //           ),
                  //           SizedBox(
                  //             height: 5,
                  //           ),
                  //           Container(
                  //             height: 30,
                  //             child: RaisedButton(
                  //               child: Text('Shop Now'),
                  //               color: Color.fromRGBO(154, 197, 94, 1),
                  //               textColor: Colors.white,
                  //               onPressed: () {},
                  //             ),
                  //           ),
                  //         ],
                  //       )),
                  //     ),
                  //   ],
                  // ),
                  SizedBox(
                    height: 20,
                  ),
                  RaisedButton(
                    child: Text('Click here to see all'),
                    color: Color.fromRGBO(154, 197, 94, 1),
                    textColor: Colors.white,
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Others Products",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              child: Text(
                                "See All Products",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.topRight,
                              child: GestureDetector(
                                  onTap: () {},
                                  child: Icon(Icons.arrow_forward_ios)

                                  // onTap: Navigator.push(
                                  //         context,
                                  //         MaterialPageRoute(
                                  //             builder: (context) => CateegoryPage())),
                                  ),
                            ),
                          ),
                        ],
                      )),
                  Container(
                    child: ListView.builder(
                        shrinkWrap: true,
                        controller: ScrollController(),
                        scrollDirection: Axis.horizontal,
                        itemCount: 15,
                        itemBuilder: (context, position) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 90.0,
                                  width: 110.0,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      'assets/images/cup.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                ),
                              ),
                            ],
                          );
                        }),
                    height: 110.0,
                    // width: 340.0,
                    width: MediaQuery.of(context).size.width,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  buildSpecialTeaFormulation() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),
        Text(
          "Special Tea Formulations ",
          style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              letterSpacing: 0.5),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "See All Products of Special Tea Formulations",
          style: TextStyle(
              color: Color(0xff9AC55E), fontSize: 15),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
         // height: 1315,
          child: ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                  onTap: () => {
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top:10.0,bottom: 10.0),
                    child: Card(
                      //elevation: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Image.asset(
                                ListUtils.imagesTea[index],height: 190,width: 360,fit: BoxFit.cover
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30.0),
                              child: Text(
                                ListUtils.imagesOfTeaName[index],
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                            Text(
                              ListUtils.imagesOfTeaPrices[index],
                              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 30,
                              child: RaisedButton(
                                child: Text('Shop Now'),
                                color: Color.fromRGBO(154, 197, 94, 1),
                                textColor: Colors.white,
                                onPressed: () {},
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        )),
                  ));
            },
            itemCount: ListUtils.imagesTea.length,
          ),
        ),
      ],
    );
  }
  buildOtherProduct() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),
        Text(
          "Other Products",
          style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              letterSpacing: 0.5),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "See All Products of Other Products",
          style: TextStyle(
              color: Color(0xff9AC55E), fontSize: 15),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
         // height: 980,
          child: ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                  onTap: () => {
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top:10.0,bottom: 10.0),
                    child: Card(
                      //elevation: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Image.asset(
                                ListUtils.imagesother[index],height: 190,width: 360,fit: BoxFit.cover
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30.0),
                              child: Text(
                                ListUtils.imagesOfOtherName[index],
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                            Text(
                              ListUtils.imagesOfOtherPrices[index],
                              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 30,
                              child: RaisedButton(
                                child: Text('Shop Now'),
                                color: Color.fromRGBO(154, 197, 94, 1),
                                textColor: Colors.white,
                                onPressed: () {},
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        )),
                  ));
            },
            itemCount: ListUtils.imagesother.length,
          ),
        ),
      ],
    );
  }

  buildTeaForLifeProgram() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),
        Text(
          "Tea For Life Program",
          style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              letterSpacing: 0.5),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "See All Products of Tea Life Program",
          style: TextStyle(
              color: Color(0xff9AC55E), fontSize: 15),
        ),
        SizedBox(
          height: 10,
        ),

        Container(
          //height: 1315,
          child: ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                  onTap: () => {
                      },
                  child: Padding(
                    padding: const EdgeInsets.only(top:10.0,bottom: 10.0),
                    child: Card(
                      //elevation: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Image.asset(
                          ListUtils.images[index],height: 190,width: 360,fit: BoxFit.cover
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: Text(
                            ListUtils.imagesOfName[index],
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        Text(
                          ListUtils.imagesOfPrices[index],
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 30,
                          child: RaisedButton(
                            child: Text('Shop Now'),
                            color: Color.fromRGBO(154, 197, 94, 1),
                            textColor: Colors.white,
                            onPressed: () {},
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    )),
                  ));
            },
            itemCount: ListUtils.images.length,
          ),
        ),
      ],
    );
  }

  buildButton() {
    return Container(
      height: 400,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () => {
              /*setState(() {
                data[index]._Pressed1= true;
              //  _Pressed1 = !_Pressed1;
              })*/
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 40.0,
                  width: 320.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xff9AC55E),
                    ),
                    color: _Pressed1 ? Colors.white : Color(0xff9AC55E),
                  ),

                  //color: Color.fromRGBO(154, 197, 94, 0.6),
                  child: Center(
                      child: Text(
                    data[index],
                    style: TextStyle(
                      color: _Pressed1 ? Colors.black45 : Colors.white,
                    ),
                  ))),
            ),
          );
        },
        itemCount: data.length,
      ),
    );
  }
}

class ListItem<T> {
  bool isSelected = false; //Selection property to highlight or not
  T data; //Data of the user
  ListItem(this.data); //Constructor to assign the data
}

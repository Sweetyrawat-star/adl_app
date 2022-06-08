
import 'package:adl_app/screens/ProductDetails.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final image;
  final text;
  final price;
  final rating;
  final tutorial;
  DetailScreen({this.image,this.text,this.price,this.rating,this.tutorial});
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen>
    with TickerProviderStateMixin {
  final double infoHeight = 364.0;
  AnimationController animationController;
  Animation<double> animation;
  double opacity1 = 0.0;
  double opacity2 = 0.0;
  double opacity3 = 0.0;
  int itemCount = 0;
  void add() {
    setState(() {
      itemCount++;
    });
  }

  void minus() {
    setState(() {
      itemCount--;
    });
  }
  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    animation = Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        parent: animationController,
        curve: Interval(0, 1.0, curve: Curves.fastOutSlowIn)));
    setData();
    super.initState();
  }

  Future<void> setData() async {
    animationController.forward();
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    setState(() {
      opacity1 = 1.0;
    });
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    setState(() {
      opacity2 = 1.0;
    });
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    setState(() {
      opacity3 = 1.0;
    });
  }

  @override
  Widget build(BuildContext context) {

    final double tempHeight = MediaQuery.of(context).size.height -
        (MediaQuery.of(context).size.width / 1.2) +
        24.0;
    return Container(
      color: Colors.white,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(154, 197, 94, 1),
          title: Text("Products"),
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
        //backgroundColor: Color(0xff74f5f3),
        body: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 1.4,
                  child: Image.asset("assets/images/cup.jpg",fit: BoxFit.cover,height: 100,),
                ),
              ],
            ),
            Positioned(
              top: (MediaQuery.of(context).size.width / 1.2) - 80.0,
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  color
                      : Colors.white,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(32.0),
                      topRight: Radius.circular(32.0)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        offset: const Offset(1.1, 1.1),
                        blurRadius: 10.0),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Container(
                    height: 500,
                    child: ListView(
                      children: [
                        Container(
                          constraints: BoxConstraints(
                              minHeight: infoHeight,
                              maxHeight: tempHeight > infoHeight
                                  ? tempHeight
                                  : infoHeight),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 32.0, left: 18, right: 16),
                                child: Text(
                                    "Global",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 26,
                                    letterSpacing: 0.27,
                                    color:Colors.black,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0,
                                    right: 16, bottom: 8,top: 20),
                                child: Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            "Rp ",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            "\$39.00",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      ),
                                      Container(
                                          height: 30,
                                          width: 80.0,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(10.0),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment
                                                .spaceBetween,
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  minus();
                                                },
                                                child: Container(
                                                    height: 25,
                                                    width: 25,
                                                    decoration: BoxDecoration(
                                                      color:
                                                      Color(0xffE96124),
                                                      borderRadius:
                                                      BorderRadius
                                                          .circular(5.0),
                                                    ),
                                                    child: Center(
                                                        child: Text(
                                                          "-",
                                                          style: TextStyle(
                                                              color: Colors.white,
                                                              fontSize: 20),
                                                        ))),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text("$itemCount"),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Container(
                                                  height: 25,
                                                  width: 25,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xffE96124),
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        5.0),
                                                  ),
                                                  child: GestureDetector(
                                                      onTap: () {
                                                        setState(() {
                                                          add();
                                                        });
                                                      },
                                                      child: Icon(
                                                        Icons.add,
                                                        color: Colors.white,
                                                        size: 20,
                                                      ))),
                                            ],
                                          ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: AnimatedOpacity(
                                  duration: const Duration(milliseconds: 500),
                                  opacity: opacity2,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20.0,right: 16.0,top: 20.0),
                                    child: Container(
                                      height: 500,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "About Product",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 20,
                                              letterSpacing: 0.27,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(height: 10.0,),
                                          Text("A wonderful and healthy blend of unfermented red bush rooibos,"
                                              " unfermented green rooibos, lemon tea, and blueberry tea. "
                                              "This special blend of green and red bush tea is naturally caffeine-free and low in tannins,"
                                              "and rich in antioxidants. "

                                              ,textAlign: TextAlign.justify,
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              letterSpacing: 0.27,
                                              color: Colors.grey,
                                            ),
                                            maxLines: 10,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          /*Text(
                                            'Lorem ipsum is simply dummy text of printing & typesetting industry, Lorem ipsum is simply dummy text of printing & typesetting industry.',
                                            textAlign: TextAlign.justify,
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              letterSpacing: 0.27,
                                              color: Colors.grey,
                                            ),
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                          ),*/
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              AnimatedOpacity(
                                duration: const Duration(milliseconds: 500),
                                opacity: opacity3,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 16, bottom: 16, right: 16),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Expanded(
                                        child: Container(
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
                                              Navigator.push(context,
                                                  MaterialPageRoute(builder: (context) => ProductDetailPage()));
                                             // Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                                            },
                                            child: Text(
                                              'Shop Now',
                                              style: TextStyle(
                                                  fontStyle: FontStyle.normal, fontSize: 18.0),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).padding.bottom,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: (MediaQuery.of(context).size.width / 1.2) - 24.0 - 90,
              right: 35,
              child: ScaleTransition(
                alignment: Alignment.center,
                scale: CurvedAnimation(
                    parent: animationController, curve: Curves.fastOutSlowIn),
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0)),
                  elevation: 10.0,
                  child: Container(
                    width: 60,
                    height: 60,
                    child: Center(
                      child: Icon(
                        Icons.favorite,
                        color: Color.fromRGBO(154, 197, 94,1),
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ),
            ),
           /* Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 40.0),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius:
                  BorderRadius.circular(AppBar().preferredSize.height),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Color(0xffDAF8FB),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                          size: 20,
                        ),
                      ),
                      Icon(
                        Icons.more_vert,
                        color: Colors.black,
                      ),

                    ],
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            )*/
          ],
        ),
      ),
    );
  }

  Widget getTimeBoxUI(String text1, String txt2) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(16.0)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                offset: const Offset(1.1, 1.1),
                blurRadius: 8.0),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(
              left: 18.0, right: 18.0, top: 12.0, bottom: 12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                text1,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  letterSpacing: 0.27,
                  color: Colors.black,
                ),
              ),
              Text(
                txt2,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  fontSize: 14,
                  letterSpacing: 0.27,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

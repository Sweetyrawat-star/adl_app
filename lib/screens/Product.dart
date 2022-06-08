
import 'package:adl_app/screens/ProductDetails.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: GridView.count(
        crossAxisCount: 1,
        childAspectRatio: (290 / MediaQuery.of(context).size.width),
        children: List.generate(1, (index) {
          return InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProductDetailPage()));
            },
            child: Container(
               width:MediaQuery.of(context).size.width,
              child: Card(
                  child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 5,
                  ),
                  Image.asset(
                    "assets/images/cup.jpg",
                    // height: 120,
                    width:MediaQuery.of(context).size.width
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Global",
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    "\$39.00",
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
                ],
              )),
            ),
          );
        }),
      ),
    );
  }
}


import 'package:adl_app/screens/BillingAddress.dart';
import 'package:flutter/material.dart';

class AddtoCartPage extends StatefulWidget {
  @override
  _AddtoCartPageState createState() => _AddtoCartPageState();
}

class _AddtoCartPageState extends State<AddtoCartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
        backgroundColor: Color.fromRGBO(154, 197, 94, 1),
        title: Text("ADD TO CART"),
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
        child: Column(
          children: [
            SizedBox(
              height: 100,
              width: MediaQuery.of(context).size.width,
              child:Card(
                child:Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                     SizedBox(width: 10,),
                     Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/cup2.jpg"),
                    fit: BoxFit.fill)),
          ),
          SizedBox(width: 20,),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Immune System",style: TextStyle(fontSize: 18),),
               Text("\$50",style: TextStyle(fontSize: 18),),
               Text("Delete",style: TextStyle(fontSize: 18,color: Colors.grey),),
            ],
          ),
          SizedBox(width: 10,),
          Container(
            height: 40,
            width: 90,
            color: Colors.grey,
            child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.remove,color: Color.fromRGBO(154, 197, 94, 1),),
                 Text("4",style: TextStyle(fontSize: 18),),
                 Icon(Icons.add,color: Color.fromRGBO(154, 197, 94, 1),)
              ],
            ),
          )
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),
          //   SizedBox(
          //     height: 100,
          //     width: MediaQuery.of(context).size.width,
          //     child:Card(
          //       child:Row(
          //         // mainAxisAlignment: MainAxisAlignment.spaceAround,
          //         children: [
          //            SizedBox(width: 10,),
          //            Container(
          //   height: 80.0,
          //   width: 80.0,
          //   decoration: BoxDecoration(
          //       image: DecorationImage(
          //           image: AssetImage("assets/images/cup2.jpg"),
          //           fit: BoxFit.fill)),
          // ),
          // SizedBox(width: 20,),
          // Column(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     Text("Immune System",style: TextStyle(fontSize: 18),),
          //      Text("\$50",style: TextStyle(fontSize: 18),),
          //      Text("Delete",style: TextStyle(fontSize: 18,color: Colors.grey),),
          //   ],
          // ),
          // SizedBox(width: 70,),
          // Column(
          //    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     Icon(Icons.remove),
          //      Text("4",style: TextStyle(fontSize: 18),),
          //      Icon(Icons.add)
          //   ],
          // )
          //         ],
          //       ),
          //     ),,
          //   )
          Container(
            padding: EdgeInsets.all(10),
            color: Colors.grey[300],
            height: 40,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Apply Coupon",style: TextStyle(color: Colors.blue,fontSize: 16),),
                 Text("Enter Promo code",style: TextStyle(color: Colors.grey),)
              ],
            ),
          ),
           SizedBox(height: 20,),
           Container(
            padding: EdgeInsets.all(10),
            color: Colors.grey[300],
            height: 150,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Big Total",style: TextStyle(color: Colors.grey,fontSize: 16),),
                     Text("\$130",style: TextStyle(color: Colors.grey,fontSize: 16),)
                  ],
                ),
                 SizedBox(height: 5,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  
                  children: [
                    Text("Big Discount",style: TextStyle(color: Colors.grey,fontSize: 16),),
                     Text("-\$30",style: TextStyle(color: Colors.green,fontSize: 16),)
                  ],
                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  
                  children: [
                    Text("Sub Total",style: TextStyle(color: Colors.grey,fontSize: 16),),
                     Text("\$100",style: TextStyle(color: Colors.grey,fontSize: 16),)
                  ],
                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  
                  children: [
                    Text("Coupon Discount",style: TextStyle(color: Colors.grey,fontSize: 16),),
                     Text("\$0",style: TextStyle(color: Colors.grey,fontSize: 16),)
                  ],
                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  
                  children: [
                    Text("Delievery",style: TextStyle(color: Colors.grey,fontSize: 16),),
                     Text("Free",style: TextStyle(color: Colors.green,fontSize: 16),)
                  ],
                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  
                  children: [
                    Text("Total Payable",style: TextStyle(color: Colors.black,fontSize: 16),),
                     Text("\$100",style: TextStyle(color: Colors.black,fontSize: 16),)
                  ],
                ),
                
              ],
            ),
          ),
          SizedBox(height: 20,),
                 Container(
                    height: 40,
                    width: 150,
                    child: RaisedButton(
                      child: Text('PLACE ORDER',),
                      color: Color.fromRGBO(154, 197, 94, 1),
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>BillingAddressPage() ));
                      },
                    ),
                  ),
          ],
        ),
      ),  
    );
  }
}
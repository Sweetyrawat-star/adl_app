import 'package:flutter/material.dart';

class ShippingPolicyPage extends StatefulWidget {
  @override
  _ShippingPolicyPageState createState() => _ShippingPolicyPageState();
}

class _ShippingPolicyPageState extends State<ShippingPolicyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
        backgroundColor: Color.fromRGBO(154, 197, 94, 1),
        title: Text("SHIPPING-POLICY"),
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
             
          
          SizedBox(height: 10,),
          Text("Thank you for visiting and shopping at adlusashop.com.  At the current time, we essentially ship domestically within the USA.  However, we will do our best to also ensure expedient service to customers outside of U.S. as well, including Canada certain European countries and certain Asian countries.",style: TextStyle(color: Colors.grey,fontSize:16,),),
          SizedBox(height: 10,),
          Text("Specifically related to Covid-19, mail and parcel operations are impacted worldwide.  And unfortunately many countries are not accepting packages.  You can google 'Countries not accepting packages due to Covid-19' to find out if your country is included in this list.  If an order originated from one of these countries, we will notify you via email.  Thank you for your understanding during this challenging time.",
          style: TextStyle(color: Colors.grey,fontSize:16,),
          ),
           SizedBox(height: 10,),
          Text("Following are the terms and conditions that constitute our Shipping Policy.",style: TextStyle(color: Colors.grey,fontSize:16,),),
          SizedBox(height: 10,),
          // Text("We do not keep a record of the IP addresses from which users access our site except where you have specifically provided us with information about yourself, in which case we also record your IP address for security purposes. An example of this would be when proceeding to a checkout to finalize an order you may wish to make.  After completing pertinent form(s) provided, your IP address will be stored along with a transaction number that allows us to track your order.",
          // style: TextStyle(color: Colors.grey,fontSize:16,),
          // ),
           SizedBox(height: 20,),
          Text("Product Availability",
          style: TextStyle(color: Colors.black,fontSize:18,),
          ),
           SizedBox(height: 10,),
          Text("ADL USA is committed to providing exceptional service and quality products.  We strive to ensure that all products listed on our website are currently in stock and that pricing is correct.  In the event that an ordered item is not available or we are out of stock, we will notify you within 2 business days to arrange an agreeable alternative item, a backorder or a full refund.",
          style: TextStyle(color: Colors.grey,fontSize:16,),
          ),
          SizedBox(height: 10,),
          
          


          ],
        ),
        
      ),    
    );
  }
}
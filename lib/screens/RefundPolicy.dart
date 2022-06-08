import 'package:flutter/material.dart';

class RefundPolicyPage extends StatefulWidget {
  @override
  _RefundPolicyPageState createState() => _RefundPolicyPageState();
}

class _RefundPolicyPageState extends State<RefundPolicyPage> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(154, 197, 94, 1),
        title: Text("REFUND-POLICY"),
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
          Text("We strive to earn life-long customers who desire the health benefits offered by our products and we are committed to customer satisfaction.  However, because our product is a specially formulated tea, please choose your product carefully.   We do not normally give refunds if you simply change your mind or make a wrong decision.  In addition, you will be responsible for paying for shipping costs of returning your item. There will be no refund for your shipping costs.  The refund amount will only be for the purchase price that you had originally paid.",style: TextStyle(color: Colors.grey,fontSize:16,),),
          SizedBox(height: 10,),
          Text("Please email to us at sales@adlusashop.com within 30 days of receiving your order to share with us the reason for a refund request.  Please include the following information in your email:  ",
          style: TextStyle(color: Colors.grey,fontSize:16,),
          ),
          SizedBox(height: 10,),
          Text("1. your name",
          style: TextStyle(color: Colors.grey,fontSize:16,),
          ),
          SizedBox(height: 10,),
          Text("2. your mailing address",
          style: TextStyle(color: Colors.grey,fontSize:16,),
          ),
          SizedBox(height: 10,),
          Text("3. the original ordered item/product",
          style: TextStyle(color: Colors.grey,fontSize:16,),
          ),
          SizedBox(height: 10,),
          Text("4. the reason for your request",
          style: TextStyle(color: Colors.grey,fontSize:16,),
          ),
           SizedBox(height: 10,),
          Text("If the request is approved, you may choose to receive a store credit to purchase a different tea formulation.",style: TextStyle(color: Colors.grey,fontSize:16,),),
          SizedBox(height: 10,),
          Text("On rare occasions when we do approve a refund, we will email back to you a Return Authorization number (RA)",
          style: TextStyle(color: Colors.grey,fontSize:16,),
          ),
           SizedBox(height: 20,),
          Text("Shipping Instructions for return items",
          style: TextStyle(color: Colors.black,fontSize:18,),
          ),
           SizedBox(height: 10,),
          Text("To return your product, please mail the item -  in its original packaging -  to:",
          style: TextStyle(color: Colors.grey,fontSize:16,),
          ),
          SizedBox(height: 10,),
         
          


          ],
        ),
        
      ),    
    );
  }
}
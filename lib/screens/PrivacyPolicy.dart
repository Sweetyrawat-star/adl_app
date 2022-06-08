import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatefulWidget {
  @override
  _PrivacyPolicyPageState createState() => _PrivacyPolicyPageState();
}

class _PrivacyPolicyPageState extends State<PrivacyPolicyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(154, 197, 94, 1),
        title: Text("PRIVACY-POLICY"),
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
          Text("This Privacy Policy describes how your personal information is collected, used, and shared when you visit or make a purchase from adlusashop.com (the “Site”).",style: TextStyle(color: Colors.grey,fontSize:16,),),
          SizedBox(height: 10,),
          Text("ADL USA, LLC is dedicated to keeping your details private. Any information, we collect in relation to you, is kept strictly secured. We do not pass on/sell/swap any of your personal details with anyone. We use this information simply to identify your orders, provide you with our monthly newsletter (if applicable) and to personalize your shopping experience with us. ADL USA LLC uses cookies to allow you to login to your account, maintain a shopping cart and to purchase items in your shopping cart. Cookies sent to your computer from Adlusashop.com only last while you’re browsing our website. We do not store persistent cookies on your computer. Cookies also allow us to give you a more personalized shopping experience by displaying products that interest you throughout our product pages, thus providing you with a more friendly, interesting and enjoyable shopping experience.",
          style: TextStyle(color: Colors.grey,fontSize:16,),
          ),
           SizedBox(height: 10,),
          Text("Whenever you use our web site, or any other web site, the computer on which the web pages are stored (the Web server) needs to know the network address of your computer so that it can send the requested web pages to your Internet browser. The unique network address of your computer is called its 'IP address,' and is sent automatically each time you access any Internet site. From a computer's IP address, it is possible to determine the general geographic location of that computer, but otherwise it is anonymous.",style: TextStyle(color: Colors.grey,fontSize:16,),),
          SizedBox(height: 10,),
          Text("We do not keep a record of the IP addresses from which users access our site except where you have specifically provided us with information about yourself, in which case we also record your IP address for security purposes. An example of this would be when proceeding to a checkout to finalize an order you may wish to make.  After completing pertinent form(s) provided, your IP address will be stored along with a transaction number that allows us to track your order.",
          style: TextStyle(color: Colors.grey,fontSize:16,),
          ),
           SizedBox(height: 20,),
          Text("SECURITY POLICY",
          style: TextStyle(color: Colors.black,fontSize:18,),
          ),
           SizedBox(height: 10,),
          Text("When purchasing from ADL USA, LLC your financial details are passed through a secure server using the latest 128-bit SSL (secure sockets layer) encryption technology.  128-bit SSL encryption is the industry standard. If you have any questions regarding our security policy, please contact our customer support info@adlusashop.com or by mail sent to the following address:",
          style: TextStyle(color: Colors.grey,fontSize:16,),
          ),
          SizedBox(height: 10,),
          Text("ADL USA, LLC, 1364 Oberry Hoover Road, ORLANDO FL 32825, United States",
          style: TextStyle(color: Colors.grey,fontSize:16,),
          ),
          


          ],
        ),
        
      ),    
    );
  }
}
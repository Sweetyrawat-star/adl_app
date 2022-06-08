    import 'package:flutter/material.dart';

class AboutusPage extends StatefulWidget {
  @override
  _AboutusPageState createState() => _AboutusPageState();
}

class _AboutusPageState extends State<AboutusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(154, 197, 94, 1),
        title: Text("About us"),
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
             Container(
            height: 200.0,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/banner-3.jpg"),
                    fit: BoxFit.fill)),
          ),
          SizedBox(height: 20,),
          Text("Welcome to",style: TextStyle(color: Colors.blue,fontSize:18),),
          SizedBox(height: 10,),
          Text("ADL Store",style: TextStyle(color: Colors.black,fontSize:20,fontWeight: FontWeight.w700),),
          SizedBox(height: 10,),
          Text("ADL USA, LLC was launched from the founders’ desire to share the holistic healing benefits of our specially formulated tea blends. We embrace and celebrate healthy, vibrant living! People in today’s modern society relies heavily on prescription medications, which is a multi-billion dollars industry. Per data from The Business Research Company, the growing Pharmaceuticals market will reach \$1.8 billion in 2021. As a result, so many people have experienced a myriad of devastating side effects from prescription medications and wished that there is an alternative.\n\nGREAT NEWS!!! There IS an alternative to prescription medications…\n\nWe work with doctors, specialists in various fields and many had voiced personal concerns about this growing industry which they themselves are a part of. The side effects that people experienced daily from prescription medications is astounding and damaging. Many had lost their quality of life due to the devastating side effects – which could last years – even after they had stopped taking these prescription medications. In light of this sentiment, the doctors that we have relationship with enthusiastically support our vision and desire to bring a wholesome and healthy alternative option to the market – hence, Tea for Life! is borne. We pride ourselves in believing that our business success will naturally and organically grow from having healthier and happier customers whom we are able to reach – one at a time, who are happy with our products and acknowledge that Tea for Life! made a real difference for them or their loved ones. We also pride ourselves in our unique and innovative approach to the most simple of product that have been enjoyed throughout all generations – TEA!\n\nThank you for visiting. If you have any questions, please email us at info@adlusashop.com",
          style: TextStyle(color: Colors.grey,fontSize:16,),
          )


          ],
        ),
        
      ), 
    );
  }
}
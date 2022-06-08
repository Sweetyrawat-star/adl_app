
import 'package:adl_app/screens/ArticlesDetails.dart';
import 'package:flutter/material.dart';

class ArticlePage extends StatefulWidget {
  @override
  _ArticlePageState createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(154, 197, 94, 1),
        title: Text("Articles"),
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
                 Navigator.push(context,MaterialPageRoute(builder: (context) => ArticlesDetailPage()));
               },
               child: Container(
            height: 200.0,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/spinach_greens.jpg"),
                      fit: BoxFit.fill)),
          ),
             ),
          SizedBox(height: 20,),
          Text("Benefits of Spinach Kale & Other Leafy Greens",style: TextStyle(color: Colors.black,fontSize:18),),
          SizedBox(height: 10,),
          Text("July 26, 2020",style: TextStyle(color: Colors.grey,fontSize:16,),),
          SizedBox(height: 10,),
          Text("Leafy green vegetables are highly nutritious and contains a long list of health benefits, and top of the list is spinach and kale.  When you look at their nutritional makeup, kale offers more than twice the amount of Vitamin C as spinach.  However, spinach provides more folate,...",
          style: TextStyle(color: Colors.grey,fontSize:16,),
          ),
          ExpansionTile(title: Text("Read More",style:TextStyle(color: Colors.blue),))


          ],
        ),
        
      ), 
    );
  }
}
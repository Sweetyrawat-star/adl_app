import 'package:flutter/material.dart';

class ArticlesDetailPage extends StatefulWidget {
  @override
  _ArticlesDetailPageState createState() => _ArticlesDetailPageState();
}

class _ArticlesDetailPageState extends State<ArticlesDetailPage> {
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(154, 197, 94, 1),
        title: Text("Article Detail"),
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
                    image: AssetImage("assets/images/spinach_greens.jpg"),
                    fit: BoxFit.fill)),
          ),
          SizedBox(height: 20,),
          Text("Benefits of Spinach Kale & Other Leafy Greens",style: TextStyle(color: Colors.black,fontSize:18),),
          SizedBox(height: 10,),
          Text("July 26, 2020",style: TextStyle(color: Colors.grey,fontSize:16,),),
          SizedBox(height: 10,),
          Text("Leafy green vegetables are highly nutritious and contains a long list of health benefits, and top of the list is spinach and kale.  When you look at their nutritional makeup, kale offers more than twice the amount of Vitamin C as spinach.  However, spinach provides more folate,...\n\nLest I date myself, but during my young days, I used to watch the Popeye cartoon, and remember quite well the song at the end which goes “Popeye the sailor man, peep peep…”  Gee whiz, just by eating spinach, this man’s muscles grow three times its normal size and he was so strong and healthy.  I was impressed!   Whether the cartoon was successful or not, kudos to those producers for pushing something as simple and healthy as – Spinach!  This is so important especially on shows and programs geared toward kids because they will reap a lifelong of benefits from eating right and having a healthy lifestyle at an early age.",
          style: TextStyle(color: Colors.grey,fontSize:16,),
          ),
          ],
        ),
      ), 
    );
  }
}
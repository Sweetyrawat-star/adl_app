import 'package:flutter/material.dart';

class FaqPage extends StatefulWidget {
  @override
  _FaqPageState createState() => _FaqPageState();
}

class _FaqPageState extends State<FaqPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Color.fromRGBO(154, 197, 94, 1),
        title: Text("FAQ"),
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
             
          SizedBox(height: 20,),
          Center(child: Text("Health Issue & Our Tea Product",style: TextStyle(color: Colors.black,fontSize:18),)),
          SizedBox(height: 10,),
          Text("What differentiate ADL Tea for Life from other tea products that are out there in the marketplace?",style: TextStyle(color: Colors.black,fontSize:16,),),
          SizedBox(height: 10,),
          Text("A: Our products are sourced from reputable tea sources and quality teas around the world, but predominantly from South Africa.  We work with renowned doctors and scientist and blend these various high quality teas and the ratios of certain teas in each formula is very specific and geared toward providing benefits to people suffering from various ailments.  The key driver to each our product is PREVENTION of serious illnesses and our mission is to help people attain great health in the most natural way.  We truly believe that ALL of us DESERVE LIFE (ADL) – healthy, happy, fulfilling lives.",
          style: TextStyle(color: Colors.grey,fontSize:16,),
          ),
           SizedBox(height: 10,),
          Text("How should I make the tea and how often should I take it?",style: TextStyle(color: Colors.black,fontSize:16,),),
          SizedBox(height: 10,),
          Text("A: Each tea bag that you received provides sufficient supply for 30 days.  You should measure the amount of water and tea exactly as per instructions printed directly on the bag and allow the tea to steep in hot boiled water for approximately 4 – 5 minutes.  You should also take the tea 3 times per day (or 4x / day for Weight Management formula) as per instruction on the tea bag",
          style: TextStyle(color: Colors.grey,fontSize:16,),
          ),
          


          ],
        ),
        
      ),  
    );
  }
}
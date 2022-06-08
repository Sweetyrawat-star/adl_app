import 'package:flutter/material.dart';

class HealthyRecipePage extends StatefulWidget {
  @override
  _HealthyRecipePageState createState() => _HealthyRecipePageState();
}

class _HealthyRecipePageState extends State<HealthyRecipePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Color.fromRGBO(154, 197, 94, 1),
        title: Text("Healthy Recipes"),
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
                // Navigator.push(context,MaterialPageRoute(builder: (context) => ArticlesDetailPage()));
               },
               child: Container(
            height: 200.0,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/cup4.jpg"),
                      fit: BoxFit.fill)),
          ),
             ),
          SizedBox(height: 20,),
          Text("Kale Salad With Lemon Dressing",style: TextStyle(color: Colors.black,fontSize:18),),
          SizedBox(height: 10,),
          Text("July 26, 2020/  LilyDuval",style: TextStyle(color: Colors.grey,fontSize:16,),),
          SizedBox(height: 10,),
          Text("Head over to our “Articles” section and read up on the nutritional benefits of Spinach and Kale.  This is a power salad to give you some mid-day energy without the bulk.  It makes a perfect side dish or a light lunch....",
          style: TextStyle(color: Colors.grey,fontSize:16,),
          ),
          ExpansionTile(title: Text("Read More",style:TextStyle(color: Colors.blue),))


          ],
        ),
        
      ), 
    );
  }
}
import 'package:flutter/material.dart';

class HealthyRecipesDetail extends StatefulWidget {
  @override
  _HealthyRecipesDetailState createState() => _HealthyRecipesDetailState();
}

class _HealthyRecipesDetailState extends State<HealthyRecipesDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(154, 197, 94, 1),
        title: Text("Healthy Recipes Detail"),
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
                    image: AssetImage("assets/images/cup4.jpg"),
                    fit: BoxFit.fill)),
          ),
          SizedBox(height: 20,),
          Text("Kale Salad With Lemon Dressing",style: TextStyle(color: Colors.black,fontSize:18),),
          SizedBox(height: 10,),
          Text("July 26, 2020",style: TextStyle(color: Colors.grey,fontSize:16,),),
          SizedBox(height: 10,),
          Text("Head over to our “Articles” section and read up on the nutritional benefits of Spinach and Kale.\n\nThis is a power salad to give you some mid-day energy without the bulk.  It makes a perfect side dish or a light lunch.",
          style: TextStyle(color: Colors.grey,fontSize:16,),
          ),
           SizedBox(height: 10,),
          Center(child: Text("(About 4 servings)",style: TextStyle(color: Colors.black,fontSize:16,),)),
          SizedBox(height: 20,),
          Text("Ingredients For Salad:",style: TextStyle(color: Colors.black,fontSize:18),),
          SizedBox(height: 20,),
          Text("- 1 head kale – about 5 cups (washed and lay on a piece of towel to be thoroughly dried)",style: TextStyle(color: Colors.grey,fontSize:16,),),
          SizedBox(height: 10,),
          Text("- 1 - 2 teaspoon olive oil",style: TextStyle(color: Colors.grey,fontSize:16,),),
          SizedBox(height: 10,),
          Text("- 1/8 teaspoon Sea salt Optional (per preference)",style: TextStyle(color: Colors.grey,fontSize:16,),),
          SizedBox(height: 10,),
          Text("- 2 cups broccoli (chopped)",style: TextStyle(color: Colors.grey,fontSize:16,),),
          SizedBox(height: 10,),
          Text("- ¼ - ½ cup of carrots (shredded)",style: TextStyle(color: Colors.grey,fontSize:16,),),
          SizedBox(height: 10,),
          Text("- ¼ cup of red or sweet onion (diced)",style: TextStyle(color: Colors.grey,fontSize:16,),),
          SizedBox(height: 10,),
          Text("- ½ cup almonds (sliced and toasted) or sunflower seeds",style: TextStyle(color: Colors.grey,fontSize:16,),),
          SizedBox(height: 10,),
          Text("- ½ cup cheese (cheddar, feta or goat)",style: TextStyle(color: Colors.grey,fontSize:16,),),
          SizedBox(height: 10,),
          Text("- ¼ cup Raisins or Dried cranberries",style: TextStyle(color: Colors.grey,fontSize:16,),),
          


          ],
        ),
        
      ), 
    );
  }
}
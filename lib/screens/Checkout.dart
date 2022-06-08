
import 'package:adl_app/screens/CustomStepIndicator.dart';
import 'package:flutter/material.dart';
import 'package:steps_indicator/steps_indicator.dart';

class CheckoutPage extends StatefulWidget {
  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {

  final List<String> titles = [
    "Cart",
    "Information",
    "Shipping",
    "Payment",
  ];
  final stepIcons = [
    Icons.shopping_cart,
    Icons.info_rounded,
    Icons.local_shipping,
    Icons.payment,
  ];
  int _curStep = 4;
  @override
  Widget build(BuildContext context) {
    int selectedStep = 0;
    int nbSteps = 5;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(154, 197, 94, 1),
        title: Text("CHECKOUT"),
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
        padding: EdgeInsets.all(5),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _curStep;
                });
              },
              child: StepProgressView(
                icons: stepIcons,
                width: MediaQuery.of(context).size.width,
                curStep: _curStep,
                color: Color.fromRGBO(154, 197, 94, 1),
                titles: titles,
                onStepContinue: () {
                  setState(() {
                    if (_curStep < stepIcons.length - 1) {
                      _curStep = _curStep + 1;
                    } else {
                      _curStep = 0;
                    }
                  });
                },
                onStepCancel: () {
                  setState(() {
                    if (_curStep > 0) {
                      _curStep = _curStep - 1;
                    } else {
                      _curStep = 0;
                    }
                  });
                },
              ),
            ),

            SizedBox(height: 20),
             Container(
               color:Colors.grey[300],
              height: 100,
              width: MediaQuery.of(context).size.width,
             
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
              Container(
               
                height: 40,
                width: 150,
                child: 
               Text("Immune System 18% Off Auto",style: TextStyle(fontSize: 15),)),
               Text("renew x2",style: TextStyle(fontSize: 15),),
               Text("Every three months",style: TextStyle(fontSize: 15,color: Colors.grey),),
            ],
          ),
          
           SizedBox(width: 10,),
         Text("\$65.52",style: TextStyle(fontSize: 18),),
                  ],
                ),
              ),
              SizedBox(height: 20,),
           Container(
            padding: EdgeInsets.all(10),
            color: Colors.grey[300],
            height: 180,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Sub Total",style: TextStyle(color: Colors.grey,fontSize: 16),),
                     Text("\$65.52",style: TextStyle(color: Colors.grey,fontSize: 16),)
                  ],
                ),
                 SizedBox(height: 5,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  
                  children: [
                    Text("Shipping",style: TextStyle(color: Colors.grey,fontSize: 16),),
                     Text("-",style: TextStyle(color: Colors.green,fontSize: 16),)
                  ],
                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  
                  children: [
                    Text("Taxes",style: TextStyle(color: Colors.grey,fontSize: 16),),
                     Text("-",style: TextStyle(color: Colors.grey,fontSize: 16),)
                  ],
                ),
                  SizedBox(height: 10,),
                Divider(color: Colors.black26,height: 1,),
                  SizedBox(height: 10,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  
                  children: [
                    Text("Total",style: TextStyle(color: Colors.grey,fontSize: 16),),
                     Text("\$65",style: TextStyle(color: Colors.grey,fontSize: 16),)
                  ],
                ),
                 SizedBox(height: 10,),
                Divider(color: Colors.black26,height: 1,),
                  SizedBox(height: 10,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  
                  children: [
                    Text("Payment Due",style: TextStyle(color: Colors.grey,fontSize: 16),),
                     Text("\$65.52",style: TextStyle(color: Colors.green,fontSize: 16),)
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
                      child: Text('CONTINUE',),
                      color: Color.fromRGBO(154, 197, 94, 1),
                      textColor: Colors.white,
                      onPressed: () {},
                    ),
                  ),
            
          ],
        ),
      ),
    );
  }
}

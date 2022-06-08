
import 'package:adl_app/screens/AddToCart.dart';
import 'package:adl_app/screens/list_utils.dart';
import 'package:flutter/material.dart';

class ProductDetailPage extends StatefulWidget {
  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  final ScrollController _scrollController = ScrollController();

  int itemCount = 0;
  void add() {
    setState(() {
      itemCount++;
    });
  }

  void minus() {
    setState(() {
      itemCount--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Color.fromRGBO(154, 197, 94, 1),
        title: Text("Product Detail"),
        actions: [
          IconButton(
              icon: Icon(
                Icons.shopping_basket,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(10),
        child:ListView(
          children: [
             Container(
            height: 200.0,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/cup2.jpg"),
                    fit: BoxFit.fill)),
          ),
         // SizedBox(height: 20,),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Circulatory System",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700 ),),
                          SizedBox(height: 5,),
                          Text("\$50",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),)
                        ],
                      ),
                      Icon(Icons.bookmark,color: Colors.grey,)
                    ],
                  ),
                  ListTileTheme(
                    contentPadding: EdgeInsets.all(0),
                    child: ExpansionTile(
                        title: Text(
                          "Description  ",
                          style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),
                        ),
                        children: <Widget>[
                          Text("A wonderful and healthy blend of unfermented red bush rooibos,"
                              " unfermented green rooibos, lemon tea, and blueberry tea. "
                              "This special blend of green and red bush tea is naturally caffeine-free and low in tannins,"
                              "and rich in antioxidants.  The red bush tea leaves helps maintain heart health, diabetes management, and weight management."
                              " This formula also contains lemon and blueberry tea that are packed with antioxidants."
                              "  They are also rich in other vitamins, minerals, and beneficial plant compounds. "
                              " Blueberries are known to contain a wide range of vitamins and nutrients. "
                              " The leaves used to make the tea have high levels of antioxidants, and one particular antioxidant, polyphenol,"
                              "is instrumental in supporting brain function and staving off dementia, and lemons are full of Vitamin C. "
                              "When you have good circulation, you will maintain healthy blood and oxygen flow throughout your body, allowing your lungs, "
                              " heart and muscles to function properly and efficiently."
                              "This special tea formula support your circulatory function and boost overall health."),
                        ]),
                  ),

                  //SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left:4.0,right: 4),
                    child: Divider(height: 1,color: Colors.grey[400],),
                  ),

                  buildTeaForLifeProgram(),
                  Container(
                    //color: Colors.blueAccent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom:15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Radio(value: null, groupValue: null, onChanged: null),
                                  Text("One-time Purchase:\$39.95"),
                                ],
                              ),
                              Row(
                                children: [
                                  Radio(value: null, groupValue: null, onChanged: null),
                                  Text("Subscribe & save:\$39.95")
                                ],
                              ),
                            ],
                          ),
                        ),
                     Padding(
                       padding: const EdgeInsets.only(bottom: 15.0),
                       child: Container(
            height: 90.0,
            width: 90,
            decoration: BoxDecoration(
              image: DecorationImage(
                    image: AssetImage("assets/images/usda.png"),
                    fit: BoxFit.fill)),
          ),
                     )
                      ],
                    ),
                  ),
                  Card(
                    elevation: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text("Delivery",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),),
                              Container(
                                  height: 30,
                                  width: 100,
                                  padding: EdgeInsets.only(left: 20),
                                  child: Card(child: Center(child: Text("3 Months",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),))))
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                             Row(
                               children: [
                                 Text("Quantity",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),),
                                 SizedBox(width: 20,),
                                 Container(
                                   height: 40,
                                   width: 80,
                                   color: Colors.white,
                                   child: /*Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.remove),
                                    Text("1"),
                                    Icon(Icons.add),

                                  ],
                                ),*/
                                   Row(
                                     mainAxisAlignment:
                                     MainAxisAlignment
                                         .spaceBetween,
                                     children: [
                                       GestureDetector(
                                         onTap: () {
                                           minus();
                                         },
                                         child: Container(
                                             height: 25,
                                             width: 25,
                                             decoration: BoxDecoration(
                                               color:
                                               Color(0xffE96124),
                                               borderRadius:
                                               BorderRadius
                                                   .circular(5.0),
                                             ),
                                             child: Center(
                                                 child: Text(
                                                   "-",
                                                   style: TextStyle(
                                                       color: Colors.white,
                                                       fontSize: 20),
                                                 ))),
                                       ),
                                       SizedBox(
                                         width: 10,
                                       ),
                                       Text("$itemCount"),
                                       SizedBox(
                                         width: 10,
                                       ),
                                       Container(
                                           height: 25,
                                           width: 25,
                                           decoration: BoxDecoration(
                                             color: Color(0xffE96124),
                                             borderRadius:
                                             BorderRadius.circular(
                                                 5.0),
                                           ),
                                           child: GestureDetector(
                                               onTap: () {
                                                 setState(() {
                                                   add();
                                                 });
                                               },
                                               child: Icon(
                                                 Icons.add,
                                                 color: Colors.white,
                                                 size: 20,
                                               ))),
                                     ],
                                   ),
                                 ),
                               ],
                             ),
                              //SizedBox(width: 30,),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  height: 40,
                                  width: 120,
                                  child: RaisedButton(
                                    child: Text('Add To Cart',style: TextStyle(fontSize: 13),),
                                    color: Color.fromRGBO(154, 197, 94, 1),
                                    textColor: Colors.white,
                                    onPressed: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => AddtoCartPage()));
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                          //SizedBox(height: 20,),

                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )

          ],
        )
      ),
    );
  }


  buildTeaForLifeProgram() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 580,
         width: 360,
         // color: Colors.red,
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                  onTap: () => {
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top:10.0,),
                    child: Container(
                      height: 135,
                      width: MediaQuery.of(context).size.width*2,
                      child: Card(
                        elevation: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              // mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: [
                                    Text(
                                      "Retail Price: ",
                                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      ListUtils.imagesOfPrices[index],
                                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Discount Price: ",
                                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                                        ),
                                        Text(
                                          ListUtils.discountPrice[index],
                                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                                        ),
                                      ],
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        height: 40,
                                        width: 120,
                                        child: RaisedButton(
                                          child: Text('Add To Cart',style: TextStyle(fontSize: 14),),
                                          color: Color.fromRGBO(154, 197, 94, 1),
                                          textColor: Colors.white,
                                          onPressed: () {},
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "You Save: ",
                                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      ListUtils.youSave[index],
                                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                                    ),

                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          )),
                    ),
                  ));
            },
            itemCount: ListUtils.images.length,
          ),
        ),
      ],
    );
  }
}

/*Scrollbar(
                    isAlwaysShown: true,
                    controller: _scrollController,

                    child: Container(
                      height: 310,
                      child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            DataTable(
                              columns: [
                                DataColumn(label: Text('Retail Price')),
                                DataColumn(label: Text('Discount Price')),
                                DataColumn(label: Text('You Save')),
                                DataColumn(label: Text('')),
                              ],
                              rows: [
                                DataRow(cells: [
                                  DataCell(Text('On Time Price')),
                                  DataCell(Text('\$39.95')),
                                  DataCell(Text('\$-')),
                                  DataCell(Center(
                                    child: Container(
                                      height: 30,
                                      width: 100,
                                      child: RaisedButton(
                                        child: Text('Add to Cart',style: TextStyle(fontSize: 12),),
                                        color: Color.fromRGBO(154, 197, 94, 1),
                                        textColor: Colors.white,
                                        onPressed: () {
                                          Navigator.push(context,
                                              MaterialPageRoute(builder: (context) => AddtoCartPage()));
                                        },
                                      ),
                                    ),
                                  ),),
                                ]),
                                DataRow(cells: [
                                  DataCell(Text('Buy 3 - Save 10%')),
                                  DataCell(Text('\$107.95')),
                                  DataCell(Text('\$11.99')),
                                  DataCell(Center(
                                    child: Container(
                                      height: 30,
                                      width: 100,
                                      child: RaisedButton(
                                        child: Text('Add to Cart',style: TextStyle(fontSize: 12),),
                                        color: Color.fromRGBO(154, 197, 94, 1),
                                        textColor: Colors.white,
                                        onPressed: () {
                                          Navigator.push(context,
                                              MaterialPageRoute(builder: (context) => AddtoCartPage()));
                                        },
                                      ),
                                    ),
                                  ),),
                                ]),
                                DataRow(cells: [
                                  DataCell(Text('Buy 6 - Save 12%')),
                                  DataCell(Text('\$91.95')),
                                  DataCell(Text('\$28.96')),
                                  DataCell(Center(
                                    child: Container(
                                      height: 30,
                                      width: 100,
                                      child: RaisedButton(
                                        child: Text('Add to Cart',style: TextStyle(fontSize: 12),),
                                        color: Color.fromRGBO(154, 197, 94, 1),
                                        textColor: Colors.white,
                                        onPressed: () {
                                          Navigator.push(context,
                                              MaterialPageRoute(builder: (context) => AddtoCartPage()));
                                        },
                                      ),
                                    ),
                                  ),),
                                ]),
                                DataRow(cells: [
                                  DataCell(Text('Buy 9 - Save 10%')),
                                  DataCell(Text('\$65.95')),
                                  DataCell(Text('\$53.95')),
                                  DataCell(Center(
                                    child: Container(
                                      height: 30,
                                      width: 100,
                                      child: RaisedButton(
                                        child: Text('Add to Cart',style: TextStyle(fontSize: 12),),
                                        color: Color.fromRGBO(154, 197, 94, 1),
                                        textColor: Colors.white,
                                        onPressed: () {
                                          Navigator.push(context,
                                              MaterialPageRoute(builder: (context) => AddtoCartPage()));
                                        },
                                      ),
                                    ),
                                  ),),
                                ]),

                                DataRow(cells: [
                                  DataCell(Text('Buy 12 - Save 18%')),
                                  DataCell(Text('\$33.86')),
                                  DataCell(Text('\$86.29')),
                                  DataCell(Center(
                                    child: Container(
                                      height: 30,
                                      width: 100,
                                      child: RaisedButton(
                                        child: Text('Add to Cart',style: TextStyle(fontSize: 12),),
                                        color: Color.fromRGBO(154, 197, 94, 1),
                                        textColor: Colors.white,
                                        onPressed: () {
                                          Navigator.push(context,
                                              MaterialPageRoute(builder: (context) => AddtoCartPage()));
                                        },
                                      ),
                                    ),
                                  ),),
                                ]),
                              ],
                            ),
                          ]),
                    ),
                  ),*/
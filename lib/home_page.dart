import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var selected =1;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        actions: [
          CircleAvatar(
            child: Icon(
              Icons.shopping_cart_rounded,
              color: Colors.blue,
            ),
          ),
          SizedBox(
            width: 10,
          )
        ],
        backgroundColor: Color(0xffDE0CBF),
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(

            flex: 3,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xffDE0CBF),
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(60))),
                  width: double.infinity,
                  height: h / 4.70,
                ),
                Positioned(
                  left: w / 9,
                  top: h / 5.70,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    // color: Colors.white,
                    elevation: 2,
                    shadowColor: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: w / 8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Men Shoe",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "4.5",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Text(
                        "Size - 9",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(
                        "Brand : Adidas",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Positioned(
                    left: w / 2.1,
                    top: h / 20,
                    child: Image.asset("asset/images/Image.png",width: 170,height: 170,)),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding:  EdgeInsets.only(left: 50,right: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Description",
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    "It is a new branded Addidas shoe. This is specially for sports players.It has only one colour.",softWrap: true,),
                  SizedBox(height: h/20,),
                  Text("Quantity",style: TextStyle(fontSize: 30),),
                  Row(children: [

                    InkWell(
                      onTap:(){
                        setState(() {
                          selected==1?null:selected--;
                        });
                      },
                      child: Container(
                        width: 40,height: 40,
                        color: Colors.grey,child: Center(child: Text("-",style: TextStyle(fontSize: 30),)),
                      ),
                    ),
                    SizedBox(width: 1,),


                    InkWell(
                      onTap:(){
                        setState(() {
                          selected==5?null:selected++;
                        });
                      },
                      child: Container(
                        width: 40,height: 40,
                        color: Colors.grey,child: Center(child: Text("+",style: TextStyle(fontSize: 30),)),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text("$selected",style: TextStyle(fontSize: 40),)
                  ],),

                ],
              ),
            ),
          ),
          Expanded(
        
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(height: h/1,),
                Container(
                  width: w/2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("\$",style: TextStyle(color: Colors.blue,fontSize: 25),),
                      Text("100",style: TextStyle(fontSize: 50),),
                    ],
                  ),
                ),
                SizedBox(
                  width: w/2,
                  height: 70,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(40),bottomRight: Radius.circular(20))
                    ),
                    color: Colors.blue,
                    child: Center(child: Text("Buy Now",style: TextStyle(color: Colors.white),)),
                  ),
                ),],),
          )


        ],
      ),
    );
  }
}

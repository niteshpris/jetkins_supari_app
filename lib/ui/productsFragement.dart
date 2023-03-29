import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProductsFragement extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => productsState();
}

class productsState extends State<ProductsFragement> {
  bool isSwitch = false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          // Status bar color
          statusBarColor: Colors.white,

          // Status bar brightness (optional)
          statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
          statusBarBrightness: Brightness.light, // For iOS (dark icons)
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            "MY PRODUCTS",
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Image.asset(
              "assets/search.png",
              height: 25,
              width: 25,
            ),
            onPressed: () {
              // do something
            },
          ),
          IconButton(
            icon: Image.asset(
              "assets/filter.png",
              height: 25,
              width: 25,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      body: SafeArea(
        child: CustomScrollView(

          slivers: [
            SliverFillRemaining(
              hasScrollBody: true,

              child: Container(
                color: Colors.white,
                child: Column(

                  children: [
                    Container(
                        padding: EdgeInsets.only(top: 3),
                        child: Text("7864 items found",
                          style: TextStyle(color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.normal),)
                    ),
                    Expanded(child:

                    GridView.builder(

                        padding: EdgeInsets.all(10),
                        shrinkWrap: true,
                        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 200,
                            childAspectRatio: 0.62,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10),
                        itemCount: 10,
                        itemBuilder: (BuildContext ctx, index) {

                          return Card(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                            ),
                            child: Column(

                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: [



                                if (index%2==0)...[
                                  Image.asset("assets/product_1.png"),
                                ]else...[
                                  Image.asset("assets/product_2.png"),
                                ],

                                Container(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Text("Chips Supari",
                                      style: TextStyle(color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),)),
                                Container(
                                    padding: EdgeInsets.only(top: 3),
                                    child: Text("Chips Supari",
                                      style: TextStyle(color: Colors.grey,
                                          fontSize: 8,
                                          fontWeight: FontWeight.normal),)
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceBetween,
                                  mainAxisSize: MainAxisSize.max,

                                  children: [

                                    Container(
                                        padding: EdgeInsets.only(top: 3),
                                        child: Text("₹229", style: TextStyle(
                                            color: Colors.green,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w600),)
                                    ),

                                    GestureDetector(

                                      child: isSwitch ? Image.asset(
                                          "assets/switch_on.png", width: 25,
                                          height: 25) : Image.asset(
                                        "assets/swith_off.png", width: 25,
                                        height: 25,), onTap:(){
                                      setState(() {
                                        isSwitch = !isSwitch;



                                      });
                                    },
                                    )


                                  ],
                                )


                              ],
                            )

                            ,


                          );
                        }),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius
                              .circular(10), topRight: Radius.circular(10)),
                          color: Colors.green,
                        ),
                        width: double.infinity,
                        height: 50,

                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              Image.asset(
                                "assets/plus.png",
                                height: 15,
                                width: 15,
                              ), SizedBox(width: 2,),
                              Text("Add Product", style: TextStyle(fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),),
                            ],
                          ),
                        ),
                      ),
                    )

                  ],
                ),
              ),
            ),
          ],
        ),

      ),
    );
  }


}


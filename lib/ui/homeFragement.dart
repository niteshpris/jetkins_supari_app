import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:suparibazar_flutter/repository/model/data.dart';
import 'package:suparibazar_flutter/repository/retrofit/api_client.dart';
import 'notifications.dart';
import 'dart:async';



class HomeFragement extends StatefulWidget {


  @override
  State<StatefulWidget> createState() =>homeState();


}

class homeState extends State<HomeFragement>{



  @override
  void initState() {
    super.initState();

  }

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
            child: Image(
              image: AssetImage("assets/logo.png"),
              height: 40.0,
              width: 150.0,
            ),
          ) ,
          actions: <Widget>[
            IconButton(
              icon: Image.asset("assets/notification_bell.png",height: 25,width: 25,),
              onPressed: () {
                // do Notifications
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Notifications()));
              },
            )
          ],

        ),
      backgroundColor: Colors.white,
      body: SafeArea(


        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(


            child: Column(


              children: [

                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/branch.png",height: 15,width: 15,),
                        Text("Branch",style: TextStyle(color: Colors.grey,fontSize: 15),),
                        Container(
                            margin: EdgeInsets.fromLTRB(5,  0, 0, 0),
                            child: Text("Kumuta",style: TextStyle(color: Colors.black,fontSize: 15),))

                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Column(
                     crossAxisAlignment:CrossAxisAlignment.start ,
                          children: [Text("Order Received",style: TextStyle(color: Colors.white70,fontSize: 12),textAlign: TextAlign.start,),Text("3512",style: TextStyle(color: Colors.white70,fontSize: 15,fontWeight: FontWeight.bold),textAlign: TextAlign.start)],
                        ),
                        Flexible(
                          child: VerticalDivider(
                            thickness: 0.8,
                            color: Colors.white,
                          ),
                        ),
                        Column(
                            crossAxisAlignment:CrossAxisAlignment.start,
                          children: [Text("Order Completed",style: TextStyle(color: Colors.white70,fontSize: 12)),Text("2467",style: TextStyle(color: Colors.white70,fontSize: 15,fontWeight: FontWeight.bold),textAlign: TextAlign.start)],
                        ),Flexible(
                          child: VerticalDivider(
                            thickness: 0.8,
                            color: Colors.white,
                          ),
                        ),
                        Column(
                      crossAxisAlignment:CrossAxisAlignment.start,
                          children: [Text("Products Added",style: TextStyle(color: Colors.white70,fontSize: 12)),Text("3512",style: TextStyle(color: Colors.white70,fontSize: 15,fontWeight: FontWeight.bold),textAlign: TextAlign.start)],
                        )

                      ],
                    ),
                  ),

                ),
                Container(
                 margin: EdgeInsets.fromLTRB(20, 0, 0, 0),


                 child:  Align(
                     alignment: Alignment.topLeft,
                     child: Text("New Orders",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w600),textAlign: TextAlign.start)),
                ),
                ListView.builder(itemCount: 10,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap:true,
                    itemBuilder:  (context, index) {
                      return Container(

                        margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                                width: 0.5,
                                color: Colors.grey
                            )
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text("Order Number",style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.w600),textAlign: TextAlign.start),
                                      SizedBox(height: 2,),
                                      Text("DB686876e87638",style: TextStyle(color: Colors.grey,fontSize: 10,fontWeight: FontWeight.normal))
                                    ],
                                  ),Column(
                                    children: [
                                      Text("Total Amount",style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.w600),textAlign: TextAlign.start),
                                      SizedBox(height: 2,),
                                      Text("₹1400",style: TextStyle(color: Colors.grey,fontSize: 10,fontWeight: FontWeight.normal))
                                    ],
                                  )

                                ],
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                              child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Row(
                                    children: [
                                      Image.asset("assets/check.png",height: 20,width: 20,),
                                      Text("Delivered on July 12,2022",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.normal)),
                                    ],
                                  )),



                            ),
                            Divider(
                                thickness: 0.5,
                                color: Colors.grey
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Container(
                                    margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
                                    child: Text("View Details",style: TextStyle(color: Colors.blue,fontSize: 12))
                                ),Container(

                                    decoration: BoxDecoration(
                                        color: Colors.green[50],
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                            width: 0.5,
                                            color: Colors.green
                                        )

                                    ),
                                    padding: EdgeInsets.fromLTRB(15,5,15,5),
                                    margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
                                    child: Text("Delivered",style: TextStyle(color: Colors.green,fontSize: 12))
                                )
                              ],
                            )


                          ],
                        ),
                      );
                    }),


                /*_buildBody(context)*/







              ],
            ),
          ),
        ),
      ),
    );





  }
   /*FutureBuilder<ResponseData> _buildBody(BuildContext context) {
     final client = ApiClient(Dio(BaseOptions(contentType: "application/json")));
     return FutureBuilder<ResponseData>(
       future: client.login(map),
       builder: (context, snapshot) {
         if (snapshot.connectionState == ConnectionState.done) {
           final ResponseData? posts = snapshot.data;
           return _buildListView(context, posts!);
         } else {
           return Center(
             child: CircularProgressIndicator(),
           );
         }
       },
     );
   }

   // build list view & its tile
   Widget _buildListView(BuildContext context, ResponseData posts) {
     return
       ListView.builder(itemCount: posts.data.length,
       physics: NeverScrollableScrollPhysics(),
       shrinkWrap:true,
       itemBuilder:  (context, index) {
         return Container(

           margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
           decoration: BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.circular(5),
               border: Border.all(
                   width: 0.5,
                   color: Colors.grey
               )
           ),
           child: Column(
             children: [
               Padding(
                 padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Column(
                       children: [
                         Text("Order Number",style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.w600),textAlign: TextAlign.start),
                         SizedBox(height: 2,),
                         Text("DB686876e87638",style: TextStyle(color: Colors.grey,fontSize: 10,fontWeight: FontWeight.normal))
                       ],
                     ),Column(
                       children: [
                         Text("Total Amount",style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.w600),textAlign: TextAlign.start),
                         SizedBox(height: 2,),
                         Text("₹1400",style: TextStyle(color: Colors.grey,fontSize: 10,fontWeight: FontWeight.normal))
                       ],
                     )

                   ],
                 ),
               ),

               Padding(
                 padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                 child: Align(
                     alignment: Alignment.topLeft,
                     child: Row(
                       children: [
                         Image.asset("assets/check.png",height: 20,width: 20,),
                         Text("Delivered on July 12,2022",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.normal)),
                       ],
                     )),



               ),
               Divider(
                   thickness: 0.5,
                   color: Colors.grey
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [

                   Container(
                       margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
                       child: Text("View Details",style: TextStyle(color: Colors.blue,fontSize: 12))
                   ),Container(

                       decoration: BoxDecoration(
                           color: Colors.green[50],
                           borderRadius: BorderRadius.circular(5),
                           border: Border.all(
                               width: 0.5,
                               color: Colors.green
                           )

                       ),
                       padding: EdgeInsets.fromLTRB(15,5,15,5),
                       margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
                       child: Text("Delivered",style: TextStyle(color: Colors.green,fontSize: 12))
                   )
                 ],
               )


             ],
           ),
         );
       });
   }*/

}

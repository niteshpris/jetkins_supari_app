import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Notifications extends StatefulWidget {
  String? restorationId="app";
  @override
  State<StatefulWidget> createState() => notificationState();
}

class notificationState extends State<Notifications> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
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
            "NOTIFICATION",
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),

      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            color: Colors.white,
            child: Column(
              children: [

                ListView.builder(
                  itemCount: 10,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text("Order Number",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                      textAlign: TextAlign.start),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text("DB686876e87638",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 10,
                                          fontWeight: FontWeight.normal))
                                ],
                              ),
                              Column(
                                children: [
                                  Text("Total Amount",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                      textAlign: TextAlign.start),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text("₹1400",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 10,
                                          fontWeight: FontWeight.normal))
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
                                  Image.asset(
                                    "assets/check.png",
                                    height: 20,
                                    width: 20,
                                  ),
                                  Text("Delivered on July 12,2022",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal)),
                                ],
                              )),
                        ),
                        Divider(thickness: 0.5, color: Colors.grey),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
                                child: Text("View Details",
                                    style: TextStyle(
                                        color: Colors.blue, fontSize: 12))),
                            Container(
                                decoration: BoxDecoration(
                                    color: Colors.green[50],
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        width: 0.5, color: Colors.green)),
                                padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                                margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
                                child: Text("Delivered",
                                    style: TextStyle(
                                        color: Colors.green, fontSize: 12)))
                          ],
                        )
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }








}

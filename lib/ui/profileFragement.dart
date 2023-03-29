import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProfileFragement extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => profileState();
}

class profileState extends State<ProfileFragement> {
  bool isSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
            "MY PROFILE",
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(



          child: Container(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              
              children: [
                Center(
                  child:  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage("assets/product_1.png"),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Center(
                    
                    child:  Text("Shop & Shop",style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.bold),),
                  ),
                ),
                IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("suparibajar@gmail.com",style: TextStyle(fontSize: 8,color: Colors.grey,fontWeight: FontWeight.bold),),
                      Flexible(
                        child: VerticalDivider(
                          thickness: 0.8,
                          color: Colors.grey,
                        ),
                      ),
                      Text("+919876543210",style: TextStyle(fontSize: 8,color: Colors.grey,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
                Center(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                    margin: EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(width: 1, color: Colors.black)),
                    child: Text("Edit Profile",style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold),),

                  ),
                ),
                  Container(
                      margin: EdgeInsets.only(top: 20,bottom: 20,left: 10),
                      child: Text("My Information",style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold))
                  ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
                  child: Row(children: [

                    Expanded(child:  Container(

                        child: Text("Area",style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.w400))
                    )),
                    Image.asset("assets/right_arrow.png",width: 10,height: 10,)

                  ],),
                ),
                Divider(thickness: 0.5, color: Colors.grey),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
                  child: Row(children: [

                    Expanded(child:  Container(

                        child: Text("Change Password",style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.w400))
                    )),
                    Image.asset("assets/right_arrow.png",width: 10,height: 10,)

                  ],),
                ),
                Divider(thickness: 0.5, color: Colors.grey),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
                  child: Row(children: [

                    Expanded(child:  Container(

                        child: Text("Edit Store Profile",style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.w400))
                    )),
                    Image.asset("assets/right_arrow.png",width: 10,height: 10,)

                  ],),
                ),
                Divider(thickness: 0.5, color: Colors.grey),
                Container(
                    margin: EdgeInsets.only(top: 20,bottom: 20,left: 10),
                    child: Text("Notification",style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold))
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
                  child: Row(children: [

                    Expanded(child:  Container(

                        child: Text("App Notification",style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.w400))
                    )),
                    Image.asset("assets/switch_on.png",width: 25,height: 25,)

                  ],),
                ),
                Divider(thickness: 0.5, color: Colors.grey),
                Container(
                    margin: EdgeInsets.only(top: 20,bottom: 20,left: 10),
                    child: Text("Support",style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold))
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
                  child: Row(children: [

                    Expanded(child:  Container(

                        child: Text("About Us",style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.w400))
                    )),
                    Image.asset("assets/right_arrow.png",width: 10,height: 10,)

                  ],),
                ),
                Divider(thickness: 0.5, color: Colors.grey),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
                  child: Row(children: [

                    Expanded(child:  Container(

                        child: Text("Terms and Conditions",style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.w400))
                    )),
                    Image.asset("assets/right_arrow.png",width: 10,height: 10,)

                  ],),
                ),
                Divider(thickness: 0.5, color: Colors.grey),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
                  child: Row(children: [

                    Expanded(child:  Container(

                        child: Text("Privacy Policy",style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.w400))
                    )),
                    Image.asset("assets/right_arrow.png",width: 10,height: 10,)

                  ],),
                ),
                Divider(thickness: 0.5, color: Colors.grey),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
                  child: Row(children: [

                    Expanded(child:  Container(

                        child: Text("Contact Us",style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.w400))
                    )),
                    Image.asset("assets/right_arrow.png",width: 10,height: 10,)

                  ],),
                ),
                Divider(thickness: 0.5, color: Colors.grey),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
                  child: Row(children: [

                    Expanded(child:  Container(

                        child: Text("Logout",style: TextStyle(fontSize: 12,color: Colors.red,fontWeight: FontWeight.w400))
                    )),
                    Image.asset("assets/right_arrow.png",width: 10,height: 10,)

                  ],),
                ),








              ],
            ),
          ),
        ),
      ),
    );
  }
}

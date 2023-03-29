import 'dart:collection';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:suparibazar_flutter/repository/retrofit/ApicallBack.dart';
import 'package:suparibazar_flutter/ui/home.dart';
import 'package:suparibazar_flutter/repository/model/data.dart';
import 'package:suparibazar_flutter/repository/retrofit/api_client.dart';
import 'dart:async';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../repository/retrofit/ApiTask.dart';


class Login extends StatefulWidget {


  @override
  State<StatefulWidget> createState() =>LoginScreen();


}

class LoginScreen extends State<Login> implements ApicallBack{
  bool _isObscure = true;
  final mobileNumberController = TextEditingController();
  final passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  late SharedPreferences logindata;
  @override
  void initState() {

    super.initState();
    check_if_already_login();
  }

  void check_if_already_login() async {
    logindata = await SharedPreferences.getInstance();
   
  }
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body:  SafeArea(

        child: SingleChildScrollView(
          child: Container(
              color: Colors.white,

              child:Form(
                key: _formKey,
                child: Column(
                  children:  [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                      child: Center(

                        child: Text("SIGN IN" ,style: TextStyle(fontSize: 15,color: Colors.black, fontWeight: FontWeight.bold)),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 100, 0, 0),
                      child: Center(
                        child: Image(
                          image: AssetImage("assets/logo.png"),
                          height: 50.0,
                          width: 200.0,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(50, 5, 50, 0),
                      child: Center(

                        child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to " ,textAlign: TextAlign.center,style: TextStyle(fontSize: 10,color: Colors.grey)),
                      ),
                    ),
                    Container(


                      margin: EdgeInsets.fromLTRB(50, 70, 50, 0),
                      child: Center(

                        child: Text("Enter Your Mobile Number" ,textAlign: TextAlign.center,style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold)),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(50, 20, 50, 0),


                      child: TextFormField(
                        controller: mobileNumberController,
                        maxLength: 10,

                        style:  TextStyle(fontWeight: FontWeight.normal, color: Colors.black,fontSize: 15),
                        decoration: const InputDecoration(

                          border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                borderSide:  BorderSide(color: Colors.grey, width: 2.0),
                          ),
                          prefix: Text("+91"),
                          prefixStyle: TextStyle(color: Colors.black ,fontSize: 15),
                          hintText: 'Mobile Number',
                          labelText: 'Mobile Number',
                          counterText: ""


                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter mobile';
                          }else
                          if (value.length<10) {
                            return 'Please valid enter mobile';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.phone,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],

                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(50, 20, 50, 0),


                      child: TextFormField(
                        controller: passwordController,
                        style:  TextStyle(fontWeight: FontWeight.normal, color: Colors.black,fontSize: 15),
                        decoration:  InputDecoration(

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:  BorderSide(color: Colors.grey, width: 2.0),
                          ),

                          hintText: 'Password',
                          labelText: 'Password',
                          suffixIcon: IconButton(
                            icon: Icon(
                              _isObscure ? Icons.visibility : Icons.visibility_off,
                            ),
                            onPressed: () {
                              setState(() {
                                _isObscure = !_isObscure;
                              });
                            },
                          ),


                        ), validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter password';
                        }
                        return null;
                      },
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: _isObscure,
                        enableSuggestions: false,
                        autocorrect: false,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(50, 15, 50, 0),
                      child: SizedBox(
                        width: double.infinity, // <-- match_parent
                        child: ElevatedButton(
                          child: Container(
                              padding: EdgeInsets.fromLTRB(0, 12, 0, 12),
                              child: Text('SIGN IN',style: TextStyle(fontSize: 15),)),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                            onPrimary: Colors.white,
                            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                          ),
                          onPressed: () {

                            if (_formKey.currentState!.validate()) {
                              // If the form is valid, display a snackbar. In the real world,
                              // you'd often call a server or save the information in a database.

                              Map<String, dynamic> map=new HashMap<String, dynamic>();
                              map["country_code"]="91";
                              map["phone"]=mobileNumberController.text;
                              map["password"]=passwordController.text;

                              _login(context,map);
                            }


                       //   Navigator.pushReplacement(context, _createRoute());
                          },
                        ),
                      ),
                    ),
                    Container(

                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Center(

                        child: Text("Forgot Password?" ,style: TextStyle(decoration:TextDecoration.underline, fontSize: 15,color: Colors.green)),
                      ),
                    ),

                  ],
                ),
              )
          ),
        ),
      )
    );





  }
  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>  Home(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
  void _login(BuildContext context,Map<String, dynamic> map) {

    ApiTask(context).sendRequest(map,this);
    /*final client = ApiClient(Dio(BaseOptions(contentType: "application/json")));

    client.login(map).then((it) {
      print(it.response_message);


      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home()));
    }).catchError((Object obj) {
      // non-200 error goes here.
      switch (obj.runtimeType) {
        case DioError:
        // Here's the sample to get the failed response error code and message
          final res = (obj as DioError).response;
          if(res?.statusCode==404){
            ResponseData errorBody=   ResponseData.fromJson(json.decode(res.toString()))  ;
            print(errorBody.response_message);
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: Colors.red,
              content: Text(errorBody.response_message)));
          }

          break;
        default:
          break;
      }
    });*/


  }
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    mobileNumberController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  void error(String message) {

  }

  @override
  void success(ResponseData data) {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home()));
  }
}

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../ui/home.dart';
import '../model/data.dart';
import 'ApicallBack.dart';
import 'api_client.dart';

class ApiTask{

   late ApiClient callapi;
       BuildContext context;

   ApiTask(this.context) {
    callapi = ApiClient(Dio(BaseOptions(contentType: "application/json")));
  }



   Future sendRequest(Map<String, dynamic> map,ApicallBack apicallBack) async{
    callapi.login(map).then((it) {
      print(it.response_message);
      apicallBack.success(it);


    }).catchError((Object obj) {
      // non-200 error goes here.
      switch (obj.runtimeType) {
        case DioError:
        // Here's the sample to get the failed response error code and message
          final res = (obj as DioError).response;
          if(res?.statusCode==404){
            ResponseData errorBody=   ResponseData.fromJson(json.decode(res.toString()))  ;
            print(errorBody.response_message);
            apicallBack.error(errorBody.response_message);
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                backgroundColor: Colors.red,
                content: Text(errorBody.response_message)));
          }else{
            apicallBack.error(res.toString());
          }

          break;
        default:
          break;
      }
    });
  }
}
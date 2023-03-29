import 'package:suparibazar_flutter/repository/model/data.dart';

abstract  class ApicallBack {


 void success(ResponseData data) {

 }
 void error(String message) {

 }
}
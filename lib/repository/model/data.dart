import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';



@JsonSerializable()
class ResponseData{
  late String status;
 late String response_message;
  late List<dynamic>data;
  ResponseData({ status,response_messag,data});
  factory ResponseData.fromJson(Map<String, dynamic> json) => _$ResponseDataFromJson(json);
  Map<String, dynamic> toJson() => _$ResponseDataToJson(this);

}
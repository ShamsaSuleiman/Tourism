import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart'as http;
import 'package:testyy/models/customer.dart';

import '../api.dart';

class Customerservice{


  static Future<http.Response> addCustomer(String firstnameController,String lastnameController,
      String mobileController,String passwordController,String emailController) async{
    var url=Uri.parse('http://172.16.16.199:8023/customer/Regcustomer');
    Map data={
      "firstname":'$firstnameController',
      "lastname":'$lastnameController',
      "mobile_no":'$mobileController',
      "password":'$passwordController',
      "email":'$emailController'
    };
    var body=json.encode(data);
    var response= await http.post(url,headers:{"content-Type":"application/json"},body: body);
   // var url= Uri.parse(appurl+"/Regcustomer");
   // http.Response response = await http.post(url,headers:{"content-Type":"application/json"},body: body,);
    print("${response.statusCode}");
      //  "response.body);
    print("${response.body}");

   // Map responseMap=json.decode(response.body);
   // Customer customer=Customer.fromMap(responseMap);
    return response;
  }
}

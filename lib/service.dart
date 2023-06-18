import 'dart:io';
import 'dart:js_interop';

import 'package:http/http.dart' as http;
import 'domain/cycle.dart';

import 'dart:convert';
import 'dart:developer';

class CycleService{
  Future<List<Cycle>> getCycles() async{
    String url = "http://192.168.86.52:8083/training-ws/cycle/allCycles?org=FMGT";
    final queryParameters = {
      'org': 'FMGT',
    };
    // Uri uri = Uri.http('192.168.86.52:8083',"/training-ws/cycle/allCycles",queryParameters);
    // print(uri);
    try{
      final response = await http.get(Uri.parse(url));
      print("xxxx2");
      print(response);
      if(response.statusCode == 200)
      {
        List list = jsonDecode(response.body)??[];
        List<Cycle> result = list.map((e) => Cycle.fromJson(e)).toList();
        print(result);
        return result;
      }
      else
      {
        throw Exception("Error Ocurs");
      }
    }catch(e){
      print("xxxx");
      print(e.toString());
    }
    return [];
  }
}
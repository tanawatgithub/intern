import 'dart:io';
import 'package:http/http.dart' as http;
import '../domain/report.dart';
import 'dart:convert';
import 'dart:developer';

class ReportService{
  Future<List<Report>> getReport() async{
    String url = "///";
    final queryParameters ={
      'org' : "",
    };
    try{
      final response = await http.get(Uri.parse(url));
      print("xxxxxx2");
      print(response);
      if(response.statusCode == 200){
        List list = jsonDecode(response.body)??[];
        List<Report> result = list.map((e) => Report.FromJson(e)).toList();
        print(result);
        return result;
      }
      else{
        throw Exception("Error Occur");
      }
    }catch(e){
      print("xxxxxxx");
      print(e.toString());
    }
    return [];
  }
}
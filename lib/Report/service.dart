import 'dart:io';
import 'package:http/http.dart' as http;
import '../domain/report.dart';
import 'dart:convert';
import 'dart:developer';

class ReportService{
  Future<List<Report>> getReport() async{
    String url = "https://64a26cf4b45881cc0ae51d90.mockapi.io/auditindex";
    final queryParameters ={
      'org' : "",
    };
    try{
      final response = await http.get(Uri.parse(url));
      print("xxxxxx2");
      print(response);
      if(response.statusCode == 200){
        List list = jsonDecode(utf8.decode(response.bodyBytes))??[];
        List<Report> result = list.map((e) => Report.fromJson(e)).toList();
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
  //
}
import 'dart:io';
import 'package:http/http.dart' as http;
import '../domain/report.dart';
import 'dart:convert';
import 'dart:developer';

class ReportService{
  Future<List<Report>> getReport() async{
    String url = "http://192.168.86.29:8083/training-ws/test/getAuditResult/UNI";
    final queryParameters ={
      'org' : "",
    };
    try{
      final response = await http.get(Uri.parse(url));
      print("xxxxxx2");
      print(response);
      if(response.statusCode == 200){
        List list = jsonDecode(utf8.decode(response.body as List<int>))??[];
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
}
import 'dart:convert';

import 'package:http/http.dart' as http;

Future getData(/*url*/) async {
  http.Response response = await http.get("https://www.paa.ubuni.co.tz/phones");//url
  print(">>>>>>>>>>>>>>>>>>>>>> data  xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx");
  List<dynamic> list = json.decode(response.body);
  print(list.length);
//   for (var e in list) {
// 	print(e); 				// 6 7 8
// } 
  return list;
  //return response.body;
}
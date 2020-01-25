import 'dart:convert';
import 'package:http/http.dart' as http;

class NetworkHelper{
  NetworkHelper(this.url);
  final String url;

  Future getData() async{
    http.Response response = await http.get(url);
    if(response.statusCode ==200){
      String data = response.body;
      //var decoded = jsonDecode(data);
      //return decoded;
      return jsonDecode(data);
      /*double temprature = decoded['main']['temp'];
      int condition = decoded['weather'][0]['id'];
      String cityName = decoded['name'];*/

    }else{
      print(response.statusCode);
    }
  }
}
import 'dart:convert';
import 'package:http/http.dart' as http;

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      var data = response.body;
      var val = jsonDecode(data)['weather'][0]['description'];
      print(val);
      return jsonDecode(data);
    } else {
      print('error');
      print(response.statusCode);
    }
  }
}

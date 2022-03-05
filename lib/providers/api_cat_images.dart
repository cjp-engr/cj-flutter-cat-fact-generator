// import 'dart:developer';
// import 'dart:convert';
// import 'package:http/http.dart' as http;

// class ApiCatImages {
//   Future<List?> getStates() async {
//     Uri url = Uri.parse("https://api.thecatapi.com/v1/images/search");

//     var _response = await http.get(url);
//     if (_response.statusCode == 200) {
//       log('api worked ${_response.body}');
//       var _body = _response.body;
//       final _jsonResponse = json.decode(_body);
//       final _imageUrl = _jsonResponse[0]['url'];
//       print(_imageUrl);
//     } else {
//       log('api request failed ${_response.body}');

//       return null;
//     }
//   }
// }

import 'dart:developer';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiCatFacts {
  Future<Map<String, String>?> getStates() async {
    final Map<String, String> someMap = {};
    Uri urlCatFacts = Uri.parse(
        "https://cat-fact.herokuapp.com/facts/random?animal_type=cat&amount=1");
    Uri urlImage = Uri.parse("https://api.thecatapi.com/v1/images/search");

    var _responseCatFacts = await http.get(urlCatFacts);
    var _responseImage = await http.get(urlImage);
    if (_responseCatFacts.statusCode == 200 &&
        _responseImage.statusCode == 200) {
      log('api worked ${_responseCatFacts.body}');
      var _bodyCatFacts = _responseCatFacts.body;
      var _bodyImage = _responseImage.body;
      var catFacts = json.decode(_bodyCatFacts)['text'];
      var _jsonResponseImage = json.decode(_bodyImage);
      var imageUrl = _jsonResponseImage[0]['url'];

      try {
        someMap["cat_facts"] = catFacts;
        someMap["cat_image"] = imageUrl;
        return someMap;
      } catch (e) {
        log(e.toString());
      }
      //return catFacts;
    } else {
      return null;
    }
  }
}

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:tech_news_app/components/searchbar.dart';
import 'package:tech_news_app/utils/key.dart';

Future<List> fetchnews() async {
  final response = await http.get(
    Uri.parse('https://newsapi.org/v2/everything?domains=techcrunch.com,thenextweb.com&apiKey=' +
        Key.key +
        '&q=' +
        CustomSearchBar.searchcontroller.text),
  );
  Map result = jsonDecode(response.body);
  print('Fetched');

  return (result['articles']);
}
import 'package:daily_quotes/constants.dart';
import 'package:http/http.dart' as http;

Future<dynamic> get fetchData async{
  var request = http.Request('GET', Uri.parse(url));

  request.headers.addAll(headers);

  http.StreamedResponse streamedResponse = await request.send();
  var response = await http.Response.fromStream(streamedResponse);

  return response.body;

}
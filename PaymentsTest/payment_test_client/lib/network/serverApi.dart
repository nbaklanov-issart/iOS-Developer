import 'package:http/http.dart' as http;

class ServerApi {
  void getStripeCardsList() {
    http.get('http://http://localhost:8080/').then((response) {
      print("Response status: ${response.statusCode}");
      print("Response body: ${response.body}");
    }).catchError((error){
      print("Error: $error");
    });
  }
}
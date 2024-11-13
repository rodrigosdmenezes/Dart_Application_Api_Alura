import 'package:http/http.dart';

void main() {
  //print('nada');
  requestData();
}

requestData() {
  String url =
      "https://gist.githubusercontent.com/rodrigosdmenezes/ee677be1b005de9b421260239e8147ef/raw/7a6cd4368ac76cb1481fee298afd5c96b42817ac/gistfile1.txt";
  Future<Response> futureResponse = get(Uri.parse(url));
  print(futureResponse);

  futureResponse.then(
    (Response response) {
      print(response);
      print(response.body);
    },
  );
}

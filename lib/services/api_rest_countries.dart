import 'package:dio/dio.dart';

final dio = Dio();

class ApiRestCountries {
  void searchCountries() async {
    final Dio dio = Dio();
    final String url = 'https://restcountries.com/v3.1/lang/portuguese?fields=name,latlng,maps,flags';
    final response = await dio.get(url);
    final data = response.data;
    print(data);
  }
}
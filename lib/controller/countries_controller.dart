import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:travel_diary/models/countries_model.dart';

class CountriesController extends GetxController {
  var countries = <CountriesModel>[].obs;
  var isLoading = true.obs;
  var index = 0;
  var countriesList = <CountriesModel>[];

  @override
  void onInit() {
    super.onInit();
    fetchCountries();
  }

  void fetchCountries() async {
    isLoading(true);
    try {
      var response = await Dio().get(
          'https://restcountries.com/v3.1/lang/portuguese?fields=name,latlng,maps,flags');
      if (response.statusCode == 200) {
        var results = response.data;

        for (var country in results) {
          country = results[index];

          var uniqueCountry = CountriesModel(
              name: country['name']['common'],
              urlGoogleMaps: country['maps']['googleMaps'],
              latlng: country['latlng'].toString(),
              urlFlag: country['flags']['png']);
          countries.add(uniqueCountry);
          index++;
        }
      } else {
        print('Erro ao buscar paises: ${response.statusCode}');
      }
    } catch (e) {
      print('Erro ao fazer a requisição: $e');
    } finally {
      isLoading(false);
    }
  }
}

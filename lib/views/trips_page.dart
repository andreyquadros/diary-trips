import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_diary/controller/countries_controller.dart';
import 'package:travel_diary/views/countries_details_page.dart';

class TripsPage extends StatelessWidget {

  final CountriesController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text('Países de Língua Portuguesa para Visitar', style: TextStyle(fontSize: 20, color: Colors.white),),
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }

        return ListView.builder(
          itemCount: controller.countries.length,
          itemBuilder: (context, index) {
            final country = controller.countries[index];
            return Card(
              shadowColor: Colors.black,
              margin: EdgeInsets.all(8),
              child: ListTile(
                leading: country.urlFlag.isNotEmpty
                    ? Image.network(country.urlFlag, width: 50, height: 350, fit: BoxFit.cover)
                    : null,
                title: Text(country.name),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('latlng: ${country.latlng}'),
                    SizedBox(height: 8),
                    Text(country.urlGoogleMaps, maxLines: 1, overflow: TextOverflow.ellipsis),
                  ],
                ),
                onTap: () {
                  Get.to(() => CountriesDetailPage(country: country,));
                },
              ),
            );
          },
        );
      }),
    );
  }
}
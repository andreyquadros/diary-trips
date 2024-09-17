import 'package:easy_url_launcher/easy_url_launcher.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_diary/controller/current_user.dart';
import 'package:travel_diary/services/firebase/database_operations.dart';
import 'package:url_launcher/url_launcher.dart';

import '../models/countries_model.dart';

class CountriesDetailPage extends StatelessWidget {
  final CountriesModel country;

  CountriesDetailPage({required this.country});

  CurrentUserController currentUserController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          //title: Text(book.title),
          ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (country.urlFlag.isNotEmpty)
              Center(
                child: Image.network(
                  country.urlFlag,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            SizedBox(height: 16),
            Text(
              'Nome: ${country.name}',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'url: ${country.urlFlag}',
              style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
            ),
            SizedBox(height: 16),
            Text(
              'Descrição:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              country.urlGoogleMaps,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            if (country.urlGoogleMaps != null)
              Center(
                child: ElevatedButton(
                  onPressed: () async {
                    await EasyLauncher.url(url: "${country.urlGoogleMaps}");
                  },
                  child: Text('Abrir Mapa'),
                ),
              ),
            Center(
              child: ElevatedButton(
                onPressed: () async {
                  DatabaseOperationsFirebase().createNewFavoriteOnFirebase(
                      country.name, currentUserController.email.value);
                },
                child: Text('Salvar Como Destino Favorito '),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

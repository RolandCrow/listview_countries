import 'package:flutter/material.dart';
import 'package:listview_countries/models/coutry.dart';
import 'package:flutter_svg/svg.dart';
import 'package:http/http.dart' as http;


class CountryDetailScreen extends StatefulWidget {

  final Country country;

   const CountryDetailScreen({Key? key, required this.country});


  @override
  State<CountryDetailScreen> createState() => _CountryDetailScreen();

}

class _CountryDetailScreen extends State<CountryDetailScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Country Details'),
      ),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 200,
            child: SvgPicture.network(widget.country.flag, fit: BoxFit.cover,),
          ),
          const SizedBox(height: 10,),
          Text(widget.country.name, style: const TextStyle(fontSize: 16),),
          const SizedBox(height: 10,),
          Text(widget.country.iso2, style: const TextStyle(fontSize: 16),),
          const SizedBox(height: 10,),
          Text(widget.country.iso3, style: const TextStyle(fontSize: 16)),

        ],
      ),
    );
  }



}
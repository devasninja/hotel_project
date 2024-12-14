import 'package:flutter/material.dart';
import 'package:second_project/hotel_data.dart';
import 'package:second_project/hotel_item.dart';

// ignore: use_key_in_widget_constructors
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                ),
                // margin: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: const Color(0xFF024383),
                ),
                child: const Text(
                  'Available Hotels',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 14),
                child: Row(
                  children: [
                    // HotelItem(
                    //   HotelData(imageName: 'ALex', location: 'logo.png'),
                    // ),
                    // const SizedBox(width: 14),
                    // HotelItem(
                    //   HotelData(imageName: 'ALex', location: 'Alex'),
                    // ),
                    HotelItem(
                        Hotel(imageName: 'imageName', location: 'location')),
                    HotelItem(
                        Hotel(imageName: 'imageName', location: 'location')),
                  ],
                ),
              ),

              // const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}

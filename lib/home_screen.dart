import 'package:flutter/material.dart';
import 'package:second_project/hotel_data.dart';
import 'package:second_project/hotel_item.dart';
import 'package:second_project/hotels_header.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List<Hotel> hotels = [
    Hotel(imageName: 'pic1.jpg', location: 'location1'),
    Hotel(imageName: 'pic1.jpg', location: 'location2'),
    Hotel(imageName: 'pic1.jpg', location: 'location3'),
    Hotel(imageName: 'pic1.jpg', location: 'location4'),
    Hotel(imageName: 'pic1.jpg', location: 'location5'),
    Hotel(imageName: 'pic1.jpg', location: 'location6'),
    Hotel(imageName: 'pic1.jpg', location: 'location7'),
    Hotel(imageName: 'pic1.jpg', location: 'location8'),
    Hotel(imageName: 'pic1.jpg', location: 'location9'),
    Hotel(imageName: 'pic1.jpg', location: 'location10'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 12),
        child: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: const HotelHeader(),
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12),
                  itemBuilder: (_, index) => HotelItem(hotels[index]),
                  itemCount: hotels.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

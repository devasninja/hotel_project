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
                child: ListView.builder(
                  itemBuilder: buildHotelItem,
                  itemCount: hotels.length,
                ),
              ),
            ],
          ),

          // ListView(
          //   children: [
          //     Container(
          //       padding: const EdgeInsets.symmetric(
          //         vertical: 12,
          //       ),
          //       // margin: const EdgeInsets.symmetric(horizontal: 16),
          //       decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(16),
          //         color: const Color(0xFF024383),
          //       ),
          //       child: const Text(
          //         'Available Hotels',
          //         style: TextStyle(
          //           color: Colors.white,
          //           fontWeight: FontWeight.bold,
          //           fontSize: 16,
          //         ),
          //         textAlign: TextAlign.center,
          //       ),
          //     ),
          //     Container(
          //       margin: const EdgeInsets.only(top: 12),
          //       child: Row(
          //         children: [
          //           HotelItem(hotels[0]),
          //           const SizedBox(width: 12),
          //           HotelItem(hotels[1]),
          //           const SizedBox(height: 12),
          //         ],
          //       ),
          //     ),
          //     Container(
          //       margin: const EdgeInsets.only(top: 12),
          //       child: Row(
          //         children: [
          //           HotelItem(hotels[0]),
          //           const SizedBox(width: 12),
          //           HotelItem(hotels[1]),
          //           const SizedBox(height: 12),
          //         ],
          //       ),
          //     ),
          //     Container(
          //       margin: const EdgeInsets.only(top: 12),
          //       child: Row(
          //         children: [
          //           HotelItem(hotels[0]),
          //           const SizedBox(width: 12),
          //           HotelItem(hotels[1]),
          //           const SizedBox(height: 12),
          //         ],
          //       ),
          //     ),
          //     Container(
          //       margin: const EdgeInsets.only(top: 12),
          //       child: Row(
          //         children: [
          //           HotelItem(hotels[0]),
          //           const SizedBox(width: 12),
          //           HotelItem(hotels[1]),
          //           const SizedBox(height: 12),
          //         ],
          //       ),
          //     ),
          //     Container(
          //       margin: const EdgeInsets.only(top: 12),
          //       child: Row(
          //         children: [
          //           HotelItem(hotels[0]),
          //           const SizedBox(width: 12),
          //           HotelItem(hotels[1]),
          //           const SizedBox(height: 12),
          //         ],
          //       ),
          //     ),
          //   ],
          // ),
          //
          //
          // ),
        ),
      ),
    );
  }

  Widget buildHotelItem(BuildContext context, int index) {
    return HotelItem(
      hotels[index],
    );
  }
}

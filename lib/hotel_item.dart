import 'package:flutter/material.dart';
import 'package:second_project/hotel_data.dart';
import 'package:second_project/hotels_header.dart';

class HotelItem extends StatelessWidget {
  final Hotel hotelData;

  const HotelItem(this.hotelData, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset(
            'assets/images/${hotelData.imageName}',
            height: 200,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              vertical: 8,
            ),
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: const Color(0xFF024383),
            ),
            child: Text(
              hotelData.location,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

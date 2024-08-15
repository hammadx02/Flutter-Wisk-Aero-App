import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: 120,
          width: 120,
          child: Image.asset(
            'assets/images/logo.png',
            color: Colors.black,
          ),
        ),
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Container(
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0XFFFFFFFF),
            ),
            child: const Icon(IconlyLight.notification),
          ),
          const SizedBox(
            width: 7,
          ),
          const CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(
              'https://images.unsplash.com/photo-1541710430735-5fca14c95b00?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&ixid=eyJhcHBfaWQiOjE3Nzg0fQ',
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Electric\nAir Taxi',
                  style: GoogleFonts.dmSans(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 40,
                  width: 90,
                  decoration: BoxDecoration(
                    color: const Color(0XFFF9F940),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Center(
                    child: Text(
                      '8 Flights',
                      style: GoogleFonts.dmSans(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 300,
            width: double.infinity,
            child: Image.asset(
              fit: BoxFit.cover,
              'assets/images/air_taxi.png',
            ),
          ),
        ],
      ),
    );
  }
}

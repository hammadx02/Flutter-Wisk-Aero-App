// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:iconly/iconly.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: SizedBox(
//           height: 120,
//           width: 120,
//           child: Image.asset(
//             'assets/images/logo.png',
//             color: Colors.black,
//           ),
//         ),
//         centerTitle: false,
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         actions: [
//           Container(
//             height: 52,
//             width: 52,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: Colors.grey[100],
//             ),
//             child: const Icon(IconlyLight.notification),
//           ),
//           const SizedBox(
//             width: 7,
//           ),
//           const CircleAvatar(
//             radius: 25,
//             backgroundImage: NetworkImage(
//               'https://images.unsplash.com/photo-1541710430735-5fca14c95b00?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&ixid=eyJhcHBfaWQiOjE3Nzg0fQ',
//             ),
//           ),
//           const SizedBox(
//             width: 10,
//           ),
//         ],
//       ),
//       backgroundColor: Colors.grey[300],
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(15.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   'Electric\nAir Taxi',
//                   style: GoogleFonts.poppins(
//                     fontSize: 36,
//                     fontWeight: FontWeight.w600,
//                     wordSpacing: 2,
//                   ),
//                 ),
//                 Container(
//                   height: 40,
//                   width: 90,
//                   decoration: BoxDecoration(
//                     color: const Color(0XFFF9F940),
//                     borderRadius: BorderRadius.circular(100),
//                   ),
//                   child: Center(
//                     child: Text(
//                       '8 Flights',
//                       style: GoogleFonts.dmSans(
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           const SizedBox(
//             height: 30,
//           ),
//           SizedBox(
//             height: 300,
//             width: double.infinity,
//             child: Image.asset(
//               fit: BoxFit.cover,
//               'assets/images/air_taxi.png',
//             ),
//           ),
//           Center(
//             child: Container(
//               height: 60,
//               width: 60,
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: Colors.grey[100],
//               ),
//               child: Image.asset(
//                 scale: 15,
//                 'assets/images/360.png',
//               ),
//             ),
//           ),
//           const SizedBox(
//             height: 20,
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 8.0),
//             child: Row(
//               children: [
//                 Container(
//                   height: 200,
//                   width: 204.5,
//                   decoration: BoxDecoration(
//                     color: const Color(0XFFF9F940),
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Image.asset(
//                               scale: 15,
//                               'assets/images/helipad.png',
//                             ),
//                             Container(
//                               height: 60,
//                               width: 60,
//                               decoration: const BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 color: Colors.black,
//                               ),
//                               child: Image.asset(
//                                 scale: 15,
//                                 'assets/images/right-up.png',
//                                 color: const Color(0XFFFFFFFF),
//                               ),
//                             ),
//                           ],
//                         ),
//                         const Spacer(),
//                         Text(
//                           '28',
//                           style: GoogleFonts.dmSans(
//                             fontSize: 32,
//                             fontWeight: FontWeight.w900,
//                           ),
//                         ),
//                         Text(
//                           'Helipads',
//                           style: GoogleFonts.dmSans(
//                             fontSize: 16,
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 5,
//                 ),
//                 Container(
//                   height: 200,
//                   width: 204.5,
//                   decoration: BoxDecoration(
//                     color: const Color(0XFFFFFFFF),
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Image.asset(
//                               scale: 15,
//                               'assets/images/airplane.png',
//                             ),
//                             Container(
//                               height: 60,
//                               width: 60,
//                               decoration: BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 color: Colors.grey[300],
//                               ),
//                               child: Image.asset(
//                                 scale: 15,
//                                 'assets/images/right-up.png',
//                               ),
//                             ),
//                           ],
//                         ),
//                         const Spacer(),
//                         Text(
//                           '6',
//                           style: GoogleFonts.dmSans(
//                             fontSize: 32,
//                             fontWeight: FontWeight.w900,
//                           ),
//                         ),
//                         Text(
//                           'Generations',
//                           style: GoogleFonts.dmSans(
//                             fontSize: 16,
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

class BendClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    
    // Start from the top-left corner
    path.moveTo(0, 0);
    
    // Line to the top-right corner
    path.lineTo(size.width, 0);
    
    // Line to the bottom-right corner
    path.lineTo(size.width, size.height);
    
    // Create a curve at the bottom center
    path.quadraticBezierTo(size.width / 2, size.height - 20, 0, size.height);
    
    // Close the path (return to the starting point)
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

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
            height: 52,
            width: 52,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[100],
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
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Electric\nAir Taxi',
                  style: GoogleFonts.poppins(
                    fontSize: 36,
                    fontWeight: FontWeight.w600,
                    wordSpacing: 2,
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
          Center(
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[100],
              ),
              child: Image.asset(
                scale: 15,
                'assets/images/360.png',
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                ClipPath(
                  clipper: BendClipper(),
                  child: Container(
                    height: 200,
                    width: 204.5,
                    decoration: BoxDecoration(
                      color: const Color(0XFFF9F940),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                scale: 15,
                                'assets/images/helipad.png',
                              ),
                              Container(
                                height: 60,
                                width: 60,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black,
                                ),
                                child: Image.asset(
                                  scale: 15,
                                  'assets/images/right-up.png',
                                  color: const Color(0XFFFFFFFF),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Text(
                            '28',
                            style: GoogleFonts.dmSans(
                              fontSize: 32,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Text(
                            'Helipads',
                            style: GoogleFonts.dmSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                ClipPath(
                  clipper: BendClipper(),
                  child: Container(
                    height: 200,
                    width: 204.5,
                    decoration: BoxDecoration(
                      color: const Color(0XFFFFFFFF),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                scale: 15,
                                'assets/images/airplane.png',
                              ),
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey[300],
                                ),
                                child: Image.asset(
                                  scale: 15,
                                  'assets/images/right-up.png',
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Text(
                            '6',
                            style: GoogleFonts.dmSans(
                              fontSize: 32,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Text(
                            'Generations',
                            style: GoogleFonts.dmSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:iconly/iconly.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
//   late AnimationController _planeController;
//   late Animation<double> _planeAnimation;
//   late AnimationController _countController;
//   late Animation<int> _helipadCountAnimation;
//   late Animation<int> _generationCountAnimation;
//   late AnimationController _logoController;
//   late Animation<double> _logoAnimation;
//   late AnimationController _containerAnimationController;

//   int _selectedIndex = 0; // To keep track of the selected icon

//   @override
//   void initState() {
//     super.initState();

//     // Plane bounce-back animation
//     _planeController = AnimationController(
//       vsync: this,
//       duration: const Duration(seconds: 3),
//     );
//     _planeAnimation = Tween<double>(begin: 0, end: 20).animate(
//       CurvedAnimation(parent: _planeController, curve: Curves.elasticOut),
//     );
//     _planeController.repeat(reverse: true);

//     // Counting animations (sped up to 1 second duration)
//     _countController = AnimationController(
//       vsync: this,
//       duration: const Duration(seconds: 1),
//     );
//     _helipadCountAnimation =
//         IntTween(begin: 0, end: 28).animate(_countController);
//     _generationCountAnimation =
//         IntTween(begin: 0, end: 6).animate(_countController);
//     _countController.forward();

//     // Logo animation (fade-in)
//     _logoController = AnimationController(
//       vsync: this,
//       duration: const Duration(seconds: 1),
//     );
//     _logoAnimation = Tween<double>(begin: 0, end: 1).animate(
//       CurvedAnimation(parent: _logoController, curve: Curves.easeIn),
//     );
//     _logoController.forward();

//     // Container animation (slide-in)
//     _containerAnimationController = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 700),
//     );
//     _containerAnimationController.forward();
//   }

//   @override
//   void dispose() {
//     _planeController.dispose();
//     _countController.dispose();
//     _logoController.dispose();
//     _containerAnimationController.dispose();
//     super.dispose();
//   }

//   void _onIconTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: FadeTransition(
//           opacity: _logoAnimation,
//           child: SizedBox(
//             height: 120,
//             width: 120,
//             child: Image.asset(
//               'assets/images/logo.png',
//               color: Colors.black,
//             ),
//           ),
//         ),
//         centerTitle: false,
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         actions: [
//           FadeTransition(
//             opacity: _logoAnimation,
//             child: Container(
//               height: 52,
//               width: 52,
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: Colors.grey[100],
//               ),
//               child: const Icon(IconlyLight.notification),
//             ),
//           ),
//           const SizedBox(width: 7),
//           const CircleAvatar(
//             radius: 25,
//             backgroundImage: AssetImage(
//               'assets/images/pp.jpeg',
//             ),
//           ),
//           const SizedBox(width: 10),
//         ],
//       ),
//       backgroundColor: Colors.grey[300],
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(15.0),
//             child: SlideTransition(
//               position:
//                   Tween<Offset>(begin: const Offset(0, -1), end: Offset.zero)
//                       .animate(CurvedAnimation(
//                           parent: _containerAnimationController,
//                           curve: Curves.easeOut)),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   // Electric Air Taxi Text
//                   Text(
//                     'Electric\nAir Taxi',
//                     style: GoogleFonts.poppins(
//                       fontSize: 36,
//                       fontWeight: FontWeight.w600,
//                       wordSpacing: 2,
//                     ),
//                   ),
//                   // "8 Flights" Container
//                   Container(
//                     height: 40,
//                     width: 90,
//                     decoration: BoxDecoration(
//                       color: const Color(0XFFF9F940),
//                       borderRadius: BorderRadius.circular(100),
//                     ),
//                     child: Center(
//                       child: Text(
//                         '8 Flights',
//                         style: GoogleFonts.dmSans(
//                           fontSize: 16,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           const SizedBox(height: 20),
//           AnimatedBuilder(
//             animation: _planeAnimation,
//             builder: (context, child) => Transform.translate(
//               offset: Offset(0, _planeAnimation.value),
//               child: SizedBox(
//                 height: 280,
//                 width: double.infinity,
//                 child: Image.asset(
//                   fit: BoxFit.cover,
//                   'assets/images/air_taxi.png',
//                 ),
//               ),
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
//           const SizedBox(height: 20),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 8.0),
//             child: Row(
//               children: [
//                 SlideTransition(
//                   position: Tween<Offset>(
//                           begin: const Offset(-1, 0), end: Offset.zero)
//                       .animate(
//                     CurvedAnimation(
//                       parent: _containerAnimationController,
//                       curve: Curves.easeOut,
//                     ),
//                   ),
//                   child: Container(
//                     height: 200,
//                     width: 204.5,
//                     decoration: BoxDecoration(
//                       color: const Color(0XFFF9F940),
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Image.asset(
//                                 scale: 15,
//                                 'assets/images/helipad.png',
//                               ),
//                               Container(
//                                 height: 60,
//                                 width: 60,
//                                 decoration: const BoxDecoration(
//                                   shape: BoxShape.circle,
//                                   color: Colors.black,
//                                 ),
//                                 child: Image.asset(
//                                   scale: 15,
//                                   'assets/images/right-up.png',
//                                   color: const Color(0XFFFFFFFF),
//                                 ),
//                               ),
//                             ],
//                           ),
//                           const Spacer(),
//                           AnimatedBuilder(
//                             animation: _helipadCountAnimation,
//                             builder: (context, child) => Text(
//                               '${_helipadCountAnimation.value}',
//                               style: GoogleFonts.dmSans(
//                                 fontSize: 32,
//                                 fontWeight: FontWeight.w900,
//                               ),
//                             ),
//                           ),
//                           Text(
//                             'Helipads',
//                             style: GoogleFonts.dmSans(
//                               fontSize: 16,
//                               fontWeight: FontWeight.w600,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(width: 5),
//                 SlideTransition(
//                   position:
//                       Tween<Offset>(begin: const Offset(1, 0), end: Offset.zero)
//                           .animate(
//                     CurvedAnimation(
//                       parent: _containerAnimationController,
//                       curve: Curves.easeOut,
//                     ),
//                   ),
//                   child: Container(
//                     height: 200,
//                     width: 204.5,
//                     decoration: BoxDecoration(
//                       color: const Color(0XFFFFFFFF),
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Image.asset(
//                                 scale: 15,
//                                 'assets/images/airplane.png',
//                               ),
//                               Container(
//                                 height: 60,
//                                 width: 60,
//                                 decoration: BoxDecoration(
//                                   shape: BoxShape.circle,
//                                   color: Colors.grey[300],
//                                 ),
//                                 child: Image.asset(
//                                   scale: 15,
//                                   'assets/images/right-up.png',
//                                 ),
//                               ),
//                             ],
//                           ),
//                           const Spacer(),
//                           AnimatedBuilder(
//                             animation: _generationCountAnimation,
//                             builder: (context, child) => Text(
//                               '${_generationCountAnimation.value}',
//                               style: GoogleFonts.dmSans(
//                                 fontSize: 32,
//                                 fontWeight: FontWeight.w900,
//                               ),
//                             ),
//                           ),
//                           Text(
//                             'Generations',
//                             style: GoogleFonts.dmSans(
//                               fontSize: 16,
//                               fontWeight: FontWeight.w600,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//       bottomNavigationBar: Container(
//         height: 80,
//         margin: const EdgeInsets.all(12),
//         padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//         decoration: BoxDecoration(
//           color: Colors.white.withOpacity(0.7), // Glassy effect
//           borderRadius: BorderRadius.circular(100),
//           boxShadow: [
//             BoxShadow(
//                 color: Colors.black.withOpacity(0.1),
//                 blurRadius: 10,
//                 offset: const Offset(0, 5)),
//           ],
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: List.generate(5, (index) {
//             final isActive = _selectedIndex == index;
//             return GestureDetector(
//               onTap: () => _onIconTapped(index),
//               child: AnimatedContainer(
//                 duration: const Duration(milliseconds: 300),
//                 height: 60,
//                 width: 60,
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: isActive ? Colors.white : Colors.transparent,
//                 ),
//                 child: Center(
//                   child: Icon(
//                     _getIconForIndex(index),
//                     color: isActive ? Colors.black : Colors.grey,
//                   ),
//                 ),
//               ),
//             );
//           }),
//         ),
//       ),
//     );
//   }

//   IconData _getIconForIndex(int index) {
//     switch (index) {
//       case 0:
//         return IconlyLight.home;
//       case 1:
//         return IconlyLight.wallet;
//       case 2:
//         return IconlyLight.location;
//       case 3:
//         return IconlyLight.time_circle;
//       case 4:
//         return IconlyLight.setting;
//       default:
//         return IconlyLight.home;
//     }
//   }
// }

import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:wisk_aero_app/bottom_nav_bar.dart';

import 'animations.dart';
import 'widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late AnimationController _planeController;
  late Animation<double> _planeAnimation;
  late AnimationController _countController;
  late Animation<int> _helipadCountAnimation;
  late Animation<int> _generationCountAnimation;
  late AnimationController _logoController;
  late Animation<double> _logoAnimation;
  late AnimationController _containerAnimationController;

  int _selectedIndex = 0; // To keep track of the selected icon

  @override
  void initState() {
    super.initState();

    _planeController = createPlaneAnimationController(this);
    _planeAnimation = createPlaneAnimation(_planeController);
    _planeController.repeat(reverse: true);

    _countController = createCountAnimationController(this);
    _helipadCountAnimation = createHelipadCountAnimation(_countController);
    _generationCountAnimation =
        createGenerationCountAnimation(_countController);
    _countController.forward();

    _logoController = createLogoAnimationController(this);
    _logoAnimation = createLogoAnimation(_logoController);
    _logoController.forward();

    _containerAnimationController = createContainerAnimationController(this);
    _containerAnimationController.forward();
  }

  @override
  void dispose() {
    _planeController.dispose();
    _countController.dispose();
    _logoController.dispose();
    _containerAnimationController.dispose();
    super.dispose();
  }

  void _onIconTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, _logoAnimation), // Correct usage
      backgroundColor: Colors.grey[300],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildHeader(context, _containerAnimationController),
          const SizedBox(height: 20),
          buildPlaneAnimation(_planeAnimation),
          Center(
            child: build360Icon(),
          ),
          const SizedBox(height: 20),
          buildStatsRow(context, _containerAnimationController,
              _helipadCountAnimation, _generationCountAnimation),
        ],
      ),
      bottomNavigationBar:
          buildBottomNavigationBar(context, _selectedIndex, _onIconTapped),
    );
  }

  IconData _getIconForIndex(int index) {
    switch (index) {
      case 0:
        return IconlyLight.home;
      case 1:
        return IconlyLight.wallet;
      case 2:
        return IconlyLight.location;
      case 3:
        return IconlyLight.time_circle;
      case 4:
        return IconlyLight.setting;
      default:
        return IconlyLight.home;
    }
  }
}

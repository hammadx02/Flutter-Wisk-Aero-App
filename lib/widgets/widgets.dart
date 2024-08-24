import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:wisk_aero_app/custom/custom_shape.dart';

PreferredSizeWidget buildAppBar(
    BuildContext context, Animation<double> logoAnimation) {
  return AppBar(
    title: FadeTransition(
      opacity: logoAnimation,
      child: SizedBox(
        height: 120,
        width: 120,
        child: Image.asset(
          'assets/images/logo.png',
          color: Colors.black,
        ),
      ),
    ),
    centerTitle: false,
    backgroundColor: Colors.transparent,
    elevation: 0,
    actions: [
      FadeTransition(
        opacity: logoAnimation,
        child: Container(
          height: 52,
          width: 52,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey[100],
          ),
          child: const Icon(IconlyLight.notification),
        ),
      ),
      const SizedBox(width: 7),
      const CircleAvatar(
        radius: 25,
        backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1541710430735-5fca14c95b00?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&ixid=eyJhcHBfaWQiOjE3Nzg0fQ',
        ),
      ),
      const SizedBox(width: 10),
    ],
  );
}

Widget buildHeader(
    BuildContext context, AnimationController containerAnimationController) {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: SlideTransition(
      position: Tween<Offset>(begin: const Offset(0, -1), end: Offset.zero)
          .animate(CurvedAnimation(
              parent: containerAnimationController, curve: Curves.easeOut)),
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
  );
}

Widget buildPlaneAnimation(Animation<double> planeAnimation) {
  return AnimatedBuilder(
    animation: planeAnimation,
    builder: (context, child) => Transform.translate(
      offset: Offset(0, planeAnimation.value),
      child: SizedBox(
        height: 280,
        width: double.infinity,
        child: Image.asset(
          fit: BoxFit.cover,
          'assets/images/air_taxi.png',
        ),
      ),
    ),
  );
}

Widget build360Icon() {
  return Container(
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
  );
}

Widget buildStatsRow(
    BuildContext context,
    AnimationController containerAnimationController,
    Animation<int> helipadCountAnimation,
    Animation<int> generationCountAnimation) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: Row(
      children: [
        SlideTransition(
          position: Tween<Offset>(begin: const Offset(-1, 0), end: Offset.zero)
              .animate(
            CurvedAnimation(
              parent: containerAnimationController,
              curve: Curves.easeOut,
            ),
          ),
          child: Container(
            height: 200,
            width: 204.5,
            decoration: BoxDecoration(
              color: const Color(0XFFF9F940),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
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
                  AnimatedBuilder(
                    animation: helipadCountAnimation,
                    builder: (context, child) => Text(
                      '${helipadCountAnimation.value}',
                      style: GoogleFonts.dmSans(
                        fontSize: 32,
                        fontWeight: FontWeight.w900,
                      ),
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
        const SizedBox(width: 5),
        SlideTransition(
          position: Tween<Offset>(begin: const Offset(1, 0), end: Offset.zero)
              .animate(
            CurvedAnimation(
              parent: containerAnimationController,
              curve: Curves.easeOut,
            ),
          ),
          child: Container(
            height: 200,
            width: 204.5,
            decoration: BoxDecoration(
              color: const Color(0XFFFFFFFF),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
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
                  AnimatedBuilder(
                    animation: generationCountAnimation,
                    builder: (context, child) => Text(
                      '${generationCountAnimation.value}',
                      style: GoogleFonts.dmSans(
                        fontSize: 32,
                        fontWeight: FontWeight.w900,
                      ),
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
  );
}

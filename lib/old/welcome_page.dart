// // ignore_for_file: sized_box_for_whitespace

// import 'package:adaptive_theme/adaptive_theme.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_animate/flutter_animate.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:yoga/screens/animation/delayed_animation.dart';
// import 'package:yoga/old/social_page.dart';
// import 'package:yoga/themes/colors.dart';

// class WelcomePage1 extends StatelessWidget {
//   const WelcomePage1({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: d_white,
//       body: SingleChildScrollView(
//         child: Container(
//           margin: const EdgeInsets.symmetric(
//             vertical: 60,
//             horizontal: 30,
//           ),
//           child: Column(
//             children: [
//               DelayedAnimation(
//                 delay: 1500,
//                 child: Container(
//                   height: 170,
//                   child: Image.asset('images/yoga_1.png'),
//                 ),
//               ),
//               DelayedAnimation(
//                 delay: 2500,
//                 child: Container(
//                   height: 400,
//                   child: Image.asset('images/yoga_2.jpeg'),
//                 ),
//               ),
//               DelayedAnimation(
//                 delay: 3500,
//                 child: Container(
//                   margin: const EdgeInsets.only(
//                     top: 30,
//                     bottom: 20,
//                   ),
//                   child: Text(
//                     "Get fitter, stronger, and embrasse a helthier lifestyle",
//                     textAlign: TextAlign.center,
//                     style: GoogleFonts.poppins(
//                       color: Colors.grey,
//                       fontSize: 16,
//                     ),
//                   ),
//                 ),
//               ),
//               DelayedAnimation(
//                 delay: 4500,
//                 child: Container(
//                   width: double.infinity,
//                   child: ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                         backgroundColor: d_red,
//                         shape: const StadiumBorder(),
//                         padding: const EdgeInsets.all(13)),
//                     child: const Text(
//                       'GET STARTED',
//                       style: TextStyle(fontWeight: FontWeight.bold),
//                     ),
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => const SocialPage(),
//                         ),
//                       );
//                     },
//                   )
//                       .animate(
//                         onComplete: (controller) {
//                           // boucle animation apres 3secondes
//                           Future.delayed(const Duration(seconds: 2), () {
//                             controller.forward(from: 0);
//                           });
//                         },
//                       )
//                       .shimmer(
//                           color: Colors.white70,
//                           delay: const Duration(seconds: 1),
//                           duration: 1800.ms)
//                       .shake(hz: 4, curve: Curves.easeInOutCubic)
//                       .scaleXY(end: 1.1, duration: 600.ms)
//                       .then(delay: 600.ms)
//                       .scaleXY(end: 1 / 1.1),
//                 ),
//               ),
//               const SizedBox(
//                 height: 25,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

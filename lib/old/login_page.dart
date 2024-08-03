// import 'package:flutter/material.dart';
// import 'package:flutter_animate/flutter_animate.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:yoga/main.dart';
// import 'package:yoga/screens/animation/delayed_animation.dart';
// import 'package:yoga/components/form.dart';
// import 'package:yoga/themes/colors.dart';

// class LoginPage1 extends StatelessWidget {
//   const LoginPage1({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.white.withOpacity(0),
//         leading: IconButton(
//           icon: const Icon(
//             Icons.close,
//             color: Colors.black,
//             size: 30,
//           ),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Container(
//               margin: const EdgeInsets.symmetric(
//                 vertical: 40,
//                 horizontal: 30,
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   DelayedAnimation(
//                     delay: 1500,
//                     child: Text(
//                       "Connect email address",
//                       style: GoogleFonts.poppins(
//                         color: d_red,
//                         fontSize: 25,
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 22),
//                   DelayedAnimation(
//                     delay: 2500,
//                     child: Text(
//                       "It's recommended to connect your email address for us to better protect your information.",
//                       style: GoogleFonts.poppins(
//                         color: Colors.grey[600],
//                         fontSize: 16,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 35),
//             const LoginForm(),
//             const SizedBox(height: 125),
//             DelayedAnimation(
//               delay: 5500,
//               child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   shape: const StadiumBorder(),
//                   backgroundColor: d_red,
//                   padding: const EdgeInsets.symmetric(
//                     horizontal: 125,
//                     vertical: 13,
//                   ),
//                 ),
//                 child: Text(
//                   'CONFIRM',
//                   style: GoogleFonts.poppins(
//                     color: Colors.white,
//                     fontSize: 15,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => const MyApp(),
//                     ),
//                   );
//                 },
//               )
//                   .animate(
//                     onComplete: (controller) {
//                       // boucle animation apres 3secondes
//                       Future.delayed(const Duration(seconds: 2), () {
//                         controller.forward(from: 0);
//                       });
//                     },
//                   )
//                   .shimmer(
//                       color: Colors.white70,
//                       delay: const Duration(seconds: 1),
//                       duration: 1800.ms)
//                   .shake(hz: 4, curve: Curves.easeInOutCubic)
//                   .scaleXY(end: 1.1, duration: 600.ms)
//                   .then(delay: 600.ms)
//                   .scaleXY(end: 1 / 1.1),
//             ),
//             const SizedBox(height: 90),
//             Align(
//               alignment: Alignment.centerRight,
//               child: Padding(
//                 padding: const EdgeInsets.only(right: 35),
//                 child: TextButton(
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                   child: DelayedAnimation(
//                     delay: 6500,
//                     child: Text(
//                       "SKIP",
//                       style: GoogleFonts.poppins(
//                         color: Colors.black,
//                         fontSize: 18,
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

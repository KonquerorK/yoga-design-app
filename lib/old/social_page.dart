// // ignore_for_file: sized_box_for_whitespace

// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:yoga/screens/animation/delayed_animation.dart';
// import 'package:yoga/old/login_page.dart';
// import 'package:yoga/themes/colors.dart';

// class SocialPage1 extends StatelessWidget {
//   const SocialPage1({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.white.withOpacity(0),
//         centerTitle: true,
//         title: const Text('Social Page'),
//         leading: IconButton(
//             onPressed: () {
//               Navigator.pop(context);
//             },
//             icon: const Icon(
//               Icons.arrow_back_ios_new,
//               color: Colors.black,
//               size: 30,
//             )),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             DelayedAnimation(
//               delay: 1500,
//               child: Container(
//                 height: 280,
//                 child: Image.asset('images/yoga_3.png'),
//               ),
//             ),
//             DelayedAnimation(
//               delay: 2500,
//               child: Container(
//                 margin: const EdgeInsets.symmetric(
//                   vertical: 40,
//                   horizontal: 30,
//                 ),
//                 child: Column(
//                   children: [
//                     Text(
//                       "Change starts here",
//                       style: GoogleFonts.poppins(
//                         color: d_red,
//                         fontSize: 16,
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                     const SizedBox(height: 10),
//                     Text(
//                       "Save your progress to access your personal training program!",
//                       textAlign: TextAlign.center,
//                       style: GoogleFonts.poppins(
//                         color: Colors.grey,
//                         fontSize: 15,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             DelayedAnimation(
//               delay: 3500,
//               child: Container(
//                 margin:
//                     const EdgeInsets.symmetric(vertical: 14, horizontal: 40),
//                 child: Column(
//                   children: [
//                     ElevatedButton(
//                       onPressed: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => const LoginPage()));
//                       },
//                       style: ElevatedButton.styleFrom(
//                           shape: const StadiumBorder(),
//                           backgroundColor: d_red,
//                           padding: const EdgeInsets.all(13)),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           const Icon(Icons.mail_outline_outlined),
//                           const SizedBox(width: 10),
//                           Text(
//                             'EMAIL',
//                             style: GoogleFonts.poppins(
//                               color: Colors.white,
//                               fontSize: 16,
//                               fontWeight: FontWeight.w500,
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                     const SizedBox(
//                       height: 20,
//                     ),
//                     ElevatedButton(
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => const LoginPage(),
//                           ),
//                         );
//                       },
//                       style: ElevatedButton.styleFrom(
//                         shape: const StadiumBorder(),
//                         backgroundColor: d_blue,
//                         padding: const EdgeInsets.all(13),
//                       ),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           const FaIcon(FontAwesomeIcons.facebook),
//                           const SizedBox(width: 10),
//                           Text(
//                             'FACEBOOK',
//                             style: GoogleFonts.poppins(
//                               color: Colors.white,
//                               fontSize: 16,
//                               fontWeight: FontWeight.w500,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     const SizedBox(height: 20),
//                     ElevatedButton(
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) =>  const LoginPage(),
//                           ),
//                         );
//                       },
//                       style: ElevatedButton.styleFrom(
//                         shape: const StadiumBorder(), backgroundColor: Colors.white,
//                         padding: const EdgeInsets.all(13),
//                       ),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Image.asset(
//                             'images/google.png',
//                             height: 20,
//                           ),
//                           const SizedBox(width: 10),
//                           Text(
//                             'GOOGLE',
//                             style: GoogleFonts.poppins(
//                               color: Colors.black,
//                               fontSize: 16,
//                               fontWeight: FontWeight.w500,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     const SizedBox(height: 20),
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

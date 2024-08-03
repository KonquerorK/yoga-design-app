import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yoga/screens/animation/delayed_animation.dart';
import 'package:yoga/old/social_page.dart';
import 'package:yoga/screens/auth/social.dart';
import 'package:yoga/themes/colors.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  bool darkmode = false;
  dynamic savedThemeMode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(
            vertical: 60,
            horizontal: 30,
          ),
          child: Column(
            children: [
              DelayedAnimation(
                delay: 1500,
                child: SizedBox(
                  height: 170,
                  child: Image.asset('images/yoga_1.png'),
                ),
              ),
              DelayedAnimation(
                delay: 2500,
                child: SizedBox(
                  height: 400,
                  child: Image.asset('images/yoga_2.jpeg'),
                ),
              ),
              DelayedAnimation(
                delay: 3500,
                child: Container(
                  margin: const EdgeInsets.only(
                    top: 30,
                    bottom: 20,
                  ),
                  child: Text(
                    "Get fitter, stronger, and embrace a healthier lifestyle",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: Theme.of(context).textTheme.bodyLarge!.color,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              DelayedAnimation(
                delay: 4500,
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).elevatedButtonTheme.style!.backgroundColor?.resolve({}),
                      shape: const StadiumBorder(),
                      padding: const EdgeInsets.all(13),
                    ),
                    child: const Text(
                      'GET STARTED',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                         color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SocialPage(),
                        ),
                      );
                    },
                  )
                      .animate(
                        onComplete: (controller) {
                          // boucle animation après 3 secondes
                          Future.delayed(const Duration(seconds: 2), () {
                            controller.forward(from: 0);
                          });
                        },
                      )
                      .shimmer(
                          color: Colors.white70,
                          delay: const Duration(seconds: 1),
                          duration: 1800.ms)
                      .shake(hz: 4, curve: Curves.easeInOutCubic)
                      .scaleXY(end: 1.1, duration: 600.ms)
                      .then(delay: 600.ms)
                      .scaleXY(end: 1 / 1.1),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              // SwitchListTile(
              //   title: Text(
              //     'Dark Mode',
              //     style: TextStyle(color: Theme.of(context).textTheme.bodyLarge!.color),
              //   ),
              //   value: darkmode,
              //   onChanged: (bool value) {
              //     print(value);
              //     if (value == true) {
              //       AdaptiveTheme.of(context).setDark();
              //     } else {
              //       AdaptiveTheme.of(context).setLight();
              //     }
              //     setState(() {
              //       darkmode = value;
              //     });
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

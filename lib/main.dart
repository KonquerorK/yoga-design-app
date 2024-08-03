import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:yoga/screens/auth/splash_screen.dart';
import 'package:yoga/screens/auth/welcome.dart';
import 'package:yoga/old/welcome_page.dart';
import 'package:yoga/themes/theme.dart';
import 'package:yoga/themes/themes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final savedThemeMode = await AdaptiveTheme.getThemeMode();
  runApp(MyApp(savedThemeMode: savedThemeMode));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, AdaptiveThemeMode? savedThemeMode});

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: lightTheme, 
      dark: darkTheme,
      // debugShowFloatingThemeButton: true,
      initial: AdaptiveThemeMode.light,
      builder: (theme, darkTheme) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'YOGA',
        theme: theme,
        darkTheme: darkTheme,
        home: const splashScreen(),
      ),
    );
  }
}

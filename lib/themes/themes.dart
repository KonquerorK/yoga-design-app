import 'package:flutter/material.dart';
import 'package:yoga/themes/colors.dart';

final ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    primary: d_red,
    onPrimary: d_white,
    // secondary: Colors.grey,
    // onSecondary: Colors.black,
    // surface: Colors.white,
    // onSurface: Colors.black,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: d_white, // Couleur du texte pour les boutons en mode clair
      backgroundColor: d_red, // Couleur de fond pour les boutons en mode clair
    ),
  ),
  buttonTheme: const ButtonThemeData(buttonColor: d_black),
  // textTheme: const TextTheme(
  //   bodyLarge: TextStyle(color: Colors.black),
  //   bodyMedium: TextStyle(color: Colors.black),
  // ),
  // iconTheme: const IconThemeData(
  //   color: Colors.black,
  // ),
  inputDecorationTheme: const InputDecorationTheme(
    // filled: true,
    // fillColor: Colors.grey[200],
    border: OutlineInputBorder(),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: d_red),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: d_red),
    ),
    labelStyle: TextStyle(color: d_black),
  ),
);




final ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    primary: d_red,
    onPrimary: d_black,
    // secondary: Colors.grey,
    // onSecondary: Colors.white,
    // surface: Colors.black,
    // onSurface: Colors.white,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: d_black, // Couleur du texte pour les boutons en mode sombre
      backgroundColor: d_red, // Couleur de fond pour les boutons en mode sombre
    ),
  ),
  buttonTheme: const ButtonThemeData(buttonColor: d_white),
  // textTheme: const TextTheme(
  //   bodyLarge: TextStyle(color: Colors.white),
  //   bodyMedium: TextStyle(color: Colors.white),
  // ),
  // iconTheme: const IconThemeData(
  //   color: Colors.white,
  // ),
  inputDecorationTheme: const InputDecorationTheme(
    filled: true,
    // fillColor: Colors.grey[800],
    border: OutlineInputBorder(),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: d_red),
    ),
    labelStyle: TextStyle(color: Colors.white),
  ),
);




/** 1 - ColorScheme: Utilisation de ColorScheme pour définir 
les couleurs principales, secondaires et les couleurs de fond pour les modes clair et sombre.
// 2 - ElevatedButtonTheme: Définir les couleurs de texte et de fond pour les boutons élevés.
// 3 - ButtonTheme: Définir les couleurs de base pour les boutons.
// 4 - TextTheme: Définir les couleurs de texte pour différents types de texte (bodyText1, bodyText2).
// 5 - IconTheme: Définir les couleurs des icônes.
// 6 - InputDecorationTheme: Définir les styles pour les champs de texte, 
//y compris les couleurs de fond, les bordures et les couleurs de texte. **/


/*
Explications:

BackgroundColor: Utilisez Theme.of(context).scaffoldBackgroundColor pour 
définir la couleur de fond en fonction du thème actuel.

Text Color: Utilisez Theme.of(context).textTheme.bodyText1!.color 
pour définir la couleur du texte en fonction du thème actuel.

ElevatedButton Color: Utilisez Theme.of(context).elevatedButtonTheme.style!.backgroundColor?.resolve({}) 
pour obtenir la couleur de fond du bouton élevé en fonction du thème actuel.

SwitchListTile: Ajoutez un titre avec une couleur de texte dépendante du thème
 pour le SwitchListTile.

 */
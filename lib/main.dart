import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MovieApp());
}

/// Root widget of the Movie Catalog application.
class MovieApp extends StatelessWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie Catalog',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        fontFamily: 'GeneralSans',
        scaffoldBackgroundColor: const Color(0xFF121418),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.amber,
          brightness: Brightness.dark,
          surface: const Color(0xFF1A1D24),
          surfaceContainerHighest: const Color(0xFF282D37),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF121418),
          foregroundColor: Colors.white,
          centerTitle: false,
          elevation: 0,
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontWeight: FontWeight.bold),
          displayMedium: TextStyle(fontWeight: FontWeight.bold),
          displaySmall: TextStyle(fontWeight: FontWeight.bold),
          headlineLarge: TextStyle(fontWeight: FontWeight.bold),
          headlineMedium: TextStyle(fontWeight: FontWeight.bold),
          headlineSmall: TextStyle(fontWeight: FontWeight.bold),
          titleLarge: TextStyle(fontWeight: FontWeight.bold),
          titleMedium: TextStyle(fontWeight: FontWeight.bold),
          titleSmall: TextStyle(fontWeight: FontWeight.bold),
          bodyLarge: TextStyle(fontWeight: FontWeight.normal),
          bodyMedium: TextStyle(fontWeight: FontWeight.normal),
          bodySmall: TextStyle(fontWeight: FontWeight.normal),
          labelLarge: TextStyle(fontWeight: FontWeight.normal),
          labelMedium: TextStyle(fontWeight: FontWeight.normal),
          labelSmall: TextStyle(fontWeight: FontWeight.normal),
        ),
        cardTheme: const CardThemeData(
          color: Color(0xFF1E222B),
          elevation: 2,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

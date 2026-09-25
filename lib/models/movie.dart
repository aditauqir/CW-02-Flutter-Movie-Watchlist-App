import 'package:flutter/material.dart';

/// Movie data model representing a film and its metadata.
class Movie {
  final String title;
  final String posterPath;
  final List<String> cast;
  final String synopsis;
  final int releaseYear;
  final double rating;
  final List<String> genres;
  final String runtime;
  final Color? dominantColor;
  bool isWatchlisted; // Graduate feature flag (default false)

  Movie({
    required this.title,
    required this.posterPath,
    required this.cast,
    required this.synopsis,
    this.releaseYear = 2020,
    this.rating = 8.0,
    this.genres = const ['Drama'],
    this.runtime = '2h 00m',
    this.dominantColor = const Color(0xFF222836),
    this.isWatchlisted = false,
  });

  /// Returns the page background color calculated to be 34% darker
  /// than the poster's dominant color, with a resilient fallback.
  Color get backgroundColor {
    final baseColor = dominantColor ?? const Color(0xFF222836);
    return Color.lerp(baseColor, Colors.black, 0.34) ?? const Color(0xFF121418);
  }

}

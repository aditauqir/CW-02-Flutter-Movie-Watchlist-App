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
    this.isWatchlisted = false,
  });
}

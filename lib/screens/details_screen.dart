import 'package:flutter/material.dart';
import '../data/movies_data.dart';
import '../models/movie.dart';

/// DetailsScreen displays the full movie info:
/// - Atmospheric background 34% darker than the poster's dominant color
/// - Centered larger title with runtime and year (no icons) and rating below it
/// - Enlarged synopsis with tighter letter-spacing
/// - Borderless 1-per-column horizontal cast layout with circular profile pictures on left and names to the right
class DetailsScreen extends StatelessWidget {
  final Movie movie;

  const DetailsScreen({
    super.key,
    required this.movie,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final screenSize = MediaQuery.sizeOf(context);
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    // Responsive sizing tokens
    final double titleFontSize = (screenWidth * 0.08).clamp(26.0, 34.0);
    final double synopsisFontSize = (screenWidth * 0.04).clamp(15.0, 17.0);
    final double horizontalPadding = (screenWidth * 0.05).clamp(16.0, 24.0);
    final double posterHeight = (screenHeight * 0.42).clamp(300.0, 420.0);

    final Color pageBackgroundColor = movie.backgroundColor;

    return Scaffold(
      backgroundColor: pageBackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        iconTheme: const IconThemeData(
          color: Colors.white,
          shadows: [
            Shadow(
              offset: Offset(0, 1),
              blurRadius: 4.0,
              color: Colors.black87,
            ),
          ],
        ),
        title: Text(
          movie.title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            shadows: [
              Shadow(
                offset: Offset(0, 1),
                blurRadius: 4.0,
                color: Colors.black87,
              ),
            ],
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Hero Poster Header with Gradient Scrim
            Stack(
              children: [
                Hero(
                  tag: 'movie-poster-${movie.title}',
                  child: Image.asset(
                    movie.posterPath,
                    width: double.infinity,
                    height: posterHeight,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Container(
                      height: posterHeight,
                      color: Colors.grey.shade900,
                      child: const Center(
                        child: Icon(
                          Icons.broken_image,
                          size: 64,
                          color: Colors.white54,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withValues(alpha: 0.4),
                          Colors.transparent,
                          pageBackgroundColor.withValues(alpha: 0.6),
                          pageBackgroundColor,
                        ],
                        stops: const [0.0, 0.35, 0.75, 1.0],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // Content Section
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Centered Movie Title (Bigger and Centered)
                  Text(
                    movie.title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: titleFontSize,
                      fontWeight: FontWeight.bold,
                      letterSpacing: -0.5,
                      height: 1.2,
                      shadows: const [
                        Shadow(
                          offset: Offset(0, 2),
                          blurRadius: 8.0,
                          color: Colors.black87,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),

                  // Centered Year and Runtime (No icons)
                  Text(
                    '${movie.releaseYear}   •   ${movie.runtime}',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: theme.colorScheme.onSurface.withValues(alpha: 0.85),
                      fontWeight: FontWeight.normal,
                      shadows: const [
                        Shadow(
                          offset: Offset(0, 1),
                          blurRadius: 4.0,
                          color: Colors.black54,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),

                  // Centered Rating Badge
                  Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.amber.withValues(alpha: 0.15),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.amber.withValues(alpha: 0.5),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.star_rounded,
                            color: Colors.amber,
                            size: 18,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            '${movie.rating.toStringAsFixed(1)} / 10',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.amber,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),

                  // Centered Genre Chips
                  Center(
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      spacing: 8,
                      runSpacing: 6,
                      children: movie.genres.map((genre) {
                        return Chip(
                          label: Text(genre),
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          visualDensity: VisualDensity.compact,
                          backgroundColor: theme
                              .colorScheme.surfaceContainerHighest
                              .withValues(alpha: 0.6),
                          labelStyle: TextStyle(
                            fontSize: 12,
                            color: theme.colorScheme.onSurface,
                            fontWeight: FontWeight.normal,
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  const SizedBox(height: 28),

                  // Synopsis Header (Bigger)
                  const Text(
                    'Synopsis',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.2,
                      shadows: [
                        Shadow(
                          offset: Offset(0, 1),
                          blurRadius: 4.0,
                          color: Colors.black54,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),

                  // Synopsis Body with larger font and squished letter spacing
                  Text(
                    movie.synopsis,
                    style: TextStyle(
                      fontSize: synopsisFontSize,
                      letterSpacing: -0.35,
                      height: 1.6,
                      color: theme.colorScheme.onSurface.withValues(alpha: 0.88),
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(height: 32),

                  // Top Cast Header (Bigger)
                  const Text(
                    'Top Cast',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.2,
                      shadows: [
                        Shadow(
                          offset: Offset(0, 1),
                          blurRadius: 4.0,
                          color: Colors.black54,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 14),

                  // 1-per-column horizontal cast list (borderless, pfp reduced by 46%)
                  _buildCastList(context),
                  const SizedBox(height: 48),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Builds a 1-per-column horizontal cast layout with no borders:
  /// profile picture on the left (reduced by 46% to radius 18.5) and name on the right.
  Widget _buildCastList(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: movie.cast.map((actor) {
        final imageUrl = actorImageUrls[actor];
        final initials = actor
            .split(' ')
            .where((part) => part.isNotEmpty)
            .map((part) => part[0])
            .take(2)
            .join();

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 6.0),
          child: Row(
            children: [
              // Circular Profile Picture (reduced by 46% to radius 18.5)
              CircleAvatar(
                radius: 18.5,
                backgroundColor: theme.colorScheme.primaryContainer,
                backgroundImage:
                    imageUrl != null ? NetworkImage(imageUrl) : null,
                onBackgroundImageError: imageUrl != null
                    ? (exception, stackTrace) {
                        // Fallback gracefully if image fails to load
                      }
                    : null,
                child: imageUrl == null
                    ? Text(
                        initials,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: theme.colorScheme.onPrimaryContainer,
                        ),
                      )
                    : null,
              ),
              const SizedBox(width: 14),

              // Actor Name on the right
              Expanded(
                child: Text(
                  actor,
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.normal,
                    color: theme.colorScheme.onSurface.withValues(alpha: 0.95),
                    shadows: const [
                      Shadow(
                        offset: Offset(0, 1),
                        blurRadius: 3.0,
                        color: Colors.black45,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}

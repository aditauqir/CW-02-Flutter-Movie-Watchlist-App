import '../models/movie.dart';

/// Curated sample list of movies for the app matching the requested catalog:
/// Inception, Interstellar, Tenet, Resident Evil (2026, Zach Cregger), Drive (Ryan Gosling).
final List<Movie> sampleMovies = [
  Movie(
    title: 'Inception',
    posterPath: 'assets/images/inception.jpg',
    cast: [
      'Leonardo DiCaprio',
      'Joseph Gordon-Levitt',
      'Elliot Page',
      'Tom Hardy',
      'Ken Watanabe',
    ],
    synopsis:
        'Dom Cobb is a skilled thief, the absolute best in the dangerous art of extraction, stealing valuable secrets from deep within the subconscious during the dream state. Given a chance at redemption, he is tasked with the impossible: inception, planting an idea into a CEO’s subconscious.',
    releaseYear: 2010,
    rating: 8.8,
    genres: ['Sci-Fi', 'Action', 'Thriller'],
    runtime: '2h 28m',
  ),
  Movie(
    title: 'Interstellar',
    posterPath: 'assets/images/interstellar.jpg',
    cast: [
      'Matthew McConaughey',
      'Anne Hathaway',
      'Jessica Chastain',
      'Michael Caine',
      'Matt Damon',
    ],
    synopsis:
        'In a future where Earth’s biosphere is collapsing from crop blight and dust storms, former NASA test pilot Joseph Cooper is recruited to lead an interstellar voyage through a newly opened wormhole near Saturn to locate a viable new home for humankind.',
    releaseYear: 2014,
    rating: 8.7,
    genres: ['Sci-Fi', 'Adventure', 'Drama'],
    runtime: '2h 49m',
  ),
  Movie(
    title: 'Tenet',
    posterPath: 'assets/images/tenet.jpg',
    cast: [
      'John David Washington',
      'Robert Pattinson',
      'Elizabeth Debicki',
      'Kenneth Branagh',
      'Michael Caine',
    ],
    synopsis:
        'Armed with only one word, Tenet, and fighting for the survival of the entire world, a secret agent journeys through a twilight world of international espionage on a mission that unfolds beyond real time via the mind-bending physics of time inversion.',
    releaseYear: 2020,
    rating: 7.3,
    genres: ['Sci-Fi', 'Action', 'Thriller'],
    runtime: '2h 30m',
  ),
  Movie(
    title: 'Resident Evil',
    posterPath: 'assets/images/resident_evil.png',
    cast: [
      'Austin Abrams',
      'Zach Cherry',
      'Kali Reis',
      'Paul Walter Hauser',
      'Zach Cregger (Dir.)',
    ],
    synopsis:
        'Directed by Zach Cregger (Barbarian), this visceral 2026 survival horror reboot follows medical courier Bryan Hodukavich as he is thrust into a catastrophic biological outbreak in Raccoon City, navigating claustrophobic terror, bio-organic abominations, and the sinister conspiracies of the Umbrella Corporation.',
    releaseYear: 2026,
    rating: 8.4,
    genres: ['Horror', 'Sci-Fi', 'Mystery'],
    runtime: '1h 58m',
  ),
  Movie(
    title: 'Drive',
    posterPath: 'assets/images/drive.jpg',
    cast: [
      'Ryan Gosling',
      'Carey Mulligan',
      'Bryan Cranston',
      'Albert Brooks',
      'Oscar Isaac',
    ],
    synopsis:
        'An unnamed Hollywood stunt driver and mechanic who moonlights as an elusive getaway driver falls in love with his neighbor Irene. When her ex-convict husband is released and targeted by the mob, the driver risks everything to protect Irene and her young son.',
    releaseYear: 2011,
    rating: 7.8,
    genres: ['Action', 'Drama', 'Crime'],
    runtime: '1h 40m',
  ),
];

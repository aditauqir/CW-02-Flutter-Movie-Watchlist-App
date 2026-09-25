import 'package:flutter/material.dart';
import '../models/movie.dart';

/// Mapping of actor names to public profile image URLs (Wikimedia Commons).
/// If an actor has no stable URL, null is mapped so a styled initials placeholder is used.
const Map<String, String?> actorImageUrls = {
  // Inception
  'Leonardo DiCaprio':
      'https://commons.wikimedia.org/wiki/Special:FilePath/Leonardo_DiCaprio_visited_Ghent_Preserved_cropped.jpg?width=300',
  'Joseph Gordon-Levitt':
      'https://commons.wikimedia.org/wiki/Special:FilePath/Joseph_Gordon-Levitt_2013.jpg?width=300',
  'Elliot Page':
      'https://commons.wikimedia.org/wiki/Special:FilePath/Elliot_Page_in_2019.jpg?width=300',
  'Tom Hardy':
      'https://commons.wikimedia.org/wiki/Special:FilePath/Tom_Hardy_by_Gage_Skidmore.jpg?width=300',
  'Ken Watanabe':
      'https://commons.wikimedia.org/wiki/Special:FilePath/Ken_Watanabe_2014.jpg?width=300',

  // Interstellar
  'Matthew McConaughey':
      'https://commons.wikimedia.org/wiki/Special:FilePath/Matthew_McConaughey_2019_(48976290201)_(cropped).jpg?width=300',
  'Anne Hathaway':
      'https://commons.wikimedia.org/wiki/Special:FilePath/Anne_Hathaway_at_the_2007_Deauville_American_Film_Festival-01A.jpg?width=300',
  'Jessica Chastain':
      'https://commons.wikimedia.org/wiki/Special:FilePath/Jessica_Chastain_-_Cannes_2014.jpg?width=300',
  'Michael Caine':
      'https://commons.wikimedia.org/wiki/Special:FilePath/Michael_Caine_-_2012.jpg?width=300',
  'Matt Damon':
      'https://commons.wikimedia.org/wiki/Special:FilePath/Matt_Damon_TIFF_2015.jpg?width=300',

  // Tenet
  'John David Washington':
      'https://commons.wikimedia.org/wiki/Special:FilePath/John_David_Washington_by_Gage_Skidmore.jpg?width=300',
  'Robert Pattinson':
      'https://commons.wikimedia.org/wiki/Special:FilePath/Robert_Pattinson_by_Gage_Skidmore.jpg?width=300',
  'Elizabeth Debicki':
      'https://commons.wikimedia.org/wiki/Special:FilePath/Elizabeth_Debicki_by_Gage_Skidmore.jpg?width=300',
  'Kenneth Branagh':
      'https://commons.wikimedia.org/wiki/Special:FilePath/Kenneth_Branagh_2015.jpg?width=300',

  // Resident Evil (2026)
  'Austin Abrams':
      'https://commons.wikimedia.org/wiki/Special:FilePath/Austin_Abrams_by_Gage_Skidmore.jpg?width=300',
  'Zach Cherry': null, // Placeholder used
  'Kali Reis':
      'https://commons.wikimedia.org/wiki/Special:FilePath/Kali_Reis_2024.jpg?width=300',
  'Paul Walter Hauser':
      'https://commons.wikimedia.org/wiki/Special:FilePath/Paul_Walter_Hauser_by_Gage_Skidmore.jpg?width=300',
  'Zach Cregger (Dir.)':
      'https://commons.wikimedia.org/wiki/Special:FilePath/Zach_Cregger_2010.jpg?width=300',

  // Drive
  'Ryan Gosling':
      'https://commons.wikimedia.org/wiki/Special:FilePath/Ryan_Gosling_by_Gage_Skidmore.jpg?width=300',
  'Carey Mulligan':
      'https://commons.wikimedia.org/wiki/Special:FilePath/Carey_Mulligan_at_the_2018_Toronto_International_Film_Festival_(cropped).jpg?width=300',
  'Bryan Cranston':
      'https://commons.wikimedia.org/wiki/Special:FilePath/Bryan_Cranston_by_Gage_Skidmore.jpg?width=300',
  'Albert Brooks':
      'https://commons.wikimedia.org/wiki/Special:FilePath/Albert_Brooks_2011.jpg?width=300',
  'Oscar Isaac':
      'https://commons.wikimedia.org/wiki/Special:FilePath/Oscar_Isaac_by_Gage_Skidmore.jpg?width=300',
};

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
    dominantColor: const Color(0xFF2B323A), // Spinning top slate-chrome tone
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
    dominantColor: const Color(0xFF382A1B), // Cosmic amber/sepia tone
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
    dominantColor: const Color(0xFF1A3B40), // Gunmetal cyan/teal tone
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
    dominantColor: const Color(0xFF4D1414), // Gothic crimson/blood tone
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
    dominantColor: const Color(0xFF1D3E4A), // Midnight teal / neon noir tone
  ),
];

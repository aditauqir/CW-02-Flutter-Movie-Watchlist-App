# Movie Catalog App

A mobile catalog application built with Flutter for CW-02 (Mobile Application Development). The app presents curated cinema titles, poster artwork, cast members, and plot summaries across two synchronized screens.

## Features

- **Film Feed (`HomeScreen`):** Displays titles in a scrollable list with poster previews, release years, star ratings, genre tags, and synopsis snippets.
- **Film Details (`DetailsScreen`):** Presents full movie metadata, a hero poster header, a complete synopsis, and cast members displayed as initials chips.
- **Model-Driven Navigation:** Passes a typed `Movie` instance from `HomeScreen` to `DetailsScreen` using `Navigator.push` and `MaterialPageRoute`.
- **Local Asset Management:** Bundles high-resolution poster files inside `assets/images/` and loads them through `Image.asset`.

## Featured Films

1. **Inception (2010):** Dom Cobb extracts corporate secrets through shared subconscious dream states.
2. **Interstellar (2014):** NASA pilot Joseph Cooper traverses a wormhole to find a habitable refuge for humanity.
3. **Tenet (2020):** A secret agent navigates time inversion to prevent global extinction.
4. **Resident Evil (2026):** Medical courier Bryan Hodukavich fights bio-organic monsters in Raccoon City under Zach Cregger's direction.
5. **Drive (2011):** A Hollywood stunt driver moonlights as a getaway wheelman to protect his neighbor from criminals.

## Project Structure

```text
movie_watchlist_app/
├── assets/
│   └── images/              # Bundled poster image files
├── docs/
│   └── CW-02_Critical_Thinking.md # Critical thinking assignment responses
├── lib/
│   ├── data/
│   │   └── movies_data.dart # Curated movie instances
│   ├── models/
│   │   └── movie.dart       # Movie model class definition
│   ├── screens/
│   │   ├── details_screen.dart # Detail view
│   │   └── home_screen.dart    # Feed list view
│   └── main.dart            # Entry point and theme configuration
├── releases/
│   └── app-release.apk      # Compiled Android release binary
└── test/
    └── widget_test.dart     # Automated UI and navigation tests
```

## Setup and Execution

### Prerequisites

- Flutter SDK (3.13+)
- Android Studio or Xcode command-line tools
- A physical device or running emulator

### Install Dependencies

```bash
flutter pub get
```

### Run Tests

```bash
flutter test
```

### Run the Application

```bash
flutter run
```

### Build Release APK

```bash
flutter build apk --release
```

The compiled package outputs to `build/app/outputs/flutter-apk/app-release.apk` and copies into `releases/app-release.apk`.

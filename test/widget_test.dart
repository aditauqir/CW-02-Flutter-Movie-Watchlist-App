import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:movie_watchlist_app/main.dart';
import 'package:movie_watchlist_app/screens/details_screen.dart';

void main() {
  testWidgets('HomeScreen renders movie list properly',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MovieApp());

    // Verify AppBar title is displayed
    expect(find.text('Movie Catalog'), findsOneWidget);

    // Verify visible top movies in list
    expect(find.text('Inception'), findsOneWidget);
    expect(find.text('Interstellar'), findsOneWidget);

    // Scroll down to verify the rest of the list
    await tester.scrollUntilVisible(
      find.text('Drive'),
      200,
      scrollable: find.byType(Scrollable),
    );
    expect(find.text('Drive'), findsOneWidget);
  });

  testWidgets(
      'Tapping a movie card navigates to DetailsScreen with full movie info',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MovieApp());

    // Tap on the visible 'Inception' movie card
    await tester.tap(find.text('Inception'));
    await tester.pumpAndSettle();

    // Verify DetailsScreen is now displayed
    expect(find.byType(DetailsScreen), findsOneWidget);

    // Verify movie details are displayed on DetailsScreen
    expect(find.text('Leonardo DiCaprio'), findsOneWidget);
    expect(find.text('Top Cast'), findsOneWidget);
    expect(find.text('Synopsis'), findsOneWidget);

    // Verify back navigation works
    await tester.tap(find.byType(BackButton));
    await tester.pumpAndSettle();

    // Verify we are back on HomeScreen
    expect(find.byType(DetailsScreen), findsNothing);
    expect(find.text('Movie Catalog'), findsOneWidget);
  });
}

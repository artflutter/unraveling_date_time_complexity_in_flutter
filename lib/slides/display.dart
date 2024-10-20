import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class Display extends FlutterDeckSlideWidget {
  const Display()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/Display',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.bigFact(
      title: 'Displaying',
      subtitle: ".toIso8601String, .toLocal, DateFormat.format",
      theme: FlutterDeckTheme.of(context).copyWith(
        bigFactSlideTheme: const FlutterDeckBigFactSlideThemeData(
          titleTextStyle: TextStyle(color: Colors.amber),
        ),
      ),
    );
  }
}

class Display2 extends FlutterDeckSlideWidget {
  const Display2()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/Display2',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.bigFact(
      title: 'Displaying',
      subtitle: ".toIso8601String, .toLocal, DateFormat.format",
      theme: FlutterDeckTheme.of(context).copyWith(
        bigFactSlideTheme: const FlutterDeckBigFactSlideThemeData(
          titleTextStyle: TextStyle(color: Colors.amber),
        ),
      ),
    );
  }
}

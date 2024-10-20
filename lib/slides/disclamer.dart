import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class Disclaimer extends FlutterDeckSlideWidget {
  const Disclaimer()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/Disclaimer',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.bigFact(
      title: 'DISCLAIMER',
      subtitle:
          "each of previous steps has edge cases that we have to be aware of",
      theme: FlutterDeckTheme.of(context).copyWith(
        bigFactSlideTheme: const FlutterDeckBigFactSlideThemeData(
          titleTextStyle: TextStyle(color: Colors.pink),
        ),
      ),
    );
  }
}

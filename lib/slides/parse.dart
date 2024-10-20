import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class Parse extends FlutterDeckSlideWidget {
  const Parse()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/Parse',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.bigFact(
      title: 'Parsing',
      subtitle: "DateTime.parse/tryParse",
      theme: FlutterDeckTheme.of(context).copyWith(
        bigFactSlideTheme: const FlutterDeckBigFactSlideThemeData(
          titleTextStyle: TextStyle(color: Colors.amber),
        ),
      ),
    );
  }
}

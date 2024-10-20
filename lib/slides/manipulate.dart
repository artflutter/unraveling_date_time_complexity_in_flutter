import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class Manipulate extends FlutterDeckSlideWidget {
  const Manipulate()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/Manipulate',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.bigFact(
      title: 'Manipulating',
      subtitle: ".add, .subtract, etc.",
      theme: FlutterDeckTheme.of(context).copyWith(
        bigFactSlideTheme: const FlutterDeckBigFactSlideThemeData(
          titleTextStyle: TextStyle(color: Colors.amber),
        ),
      ),
    );
  }
}

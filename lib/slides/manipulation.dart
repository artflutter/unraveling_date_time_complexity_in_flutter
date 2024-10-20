import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class Manipulation extends FlutterDeckSlideWidget {
  const Manipulation()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/Manipulation',
            header: FlutterDeckHeaderConfiguration(
              title: 'Typical DateTime flow',
            ),
            steps: 5,
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      leftBuilder: (context) {
        return FlutterDeckBulletList(
          useSteps: true,
          items: const [
            'User input',
            'Parse from json',
            'Manipulate',
            'Display',
            'Test',
          ],
        );
      },
      rightBuilder: (context) {
        return Image.asset(
          'assets/Manipulation.webp',
          fit: BoxFit.cover,
        );
      },
    );
  }
}

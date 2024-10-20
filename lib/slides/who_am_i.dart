import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class WhoAmI extends FlutterDeckSlideWidget {
  const WhoAmI()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/who_am_i',
            title: 'Who am I?',
            header: FlutterDeckHeaderConfiguration(
              title: 'Who am I?',
            ),
            steps: 3,
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      leftBuilder: (context) => FlutterDeckBulletList(
        useSteps: true,
        items: const [
          'Lead Flutter developer',
          'Opensource contributor',
          'Flutter Fan to the point that my slides are written using Flutter',
        ],
      ),
      rightBuilder: (context) {
        return Image.asset(
          'assets/who_am_i.png',
          fit: BoxFit.cover,
        );
      },
    );
  }
}

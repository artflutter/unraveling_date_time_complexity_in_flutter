import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class Agenda extends FlutterDeckSlideWidget {
  const Agenda()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/Agenda',
            header: FlutterDeckHeaderConfiguration(
              title: 'Agenda',
            ),
            steps: 3,
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      leftBuilder: (context) {
        return FlutterDeckBulletList(
          useSteps: true,
          items: const [
            'DateTime quarks and features',
            'Applicable knowledge',
            'No memes :\'-(',
          ],
        );
      },
      rightBuilder: (context) {
        return Image.asset(
          'assets/Agenda.png',
          fit: BoxFit.cover,
        );
      },
    );
  }
}

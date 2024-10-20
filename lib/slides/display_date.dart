import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class DisplayDate extends FlutterDeckSlideWidget {
  const DisplayDate()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/DisplayDate',
            header: FlutterDeckHeaderConfiguration(
              title: 'Displaying',
            ),
            steps: 4,
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      leftBuilder: (context) {
        return FlutterDeckBulletList(
          useSteps: true,
          items: const [
            'What other cases do you know where we need to do a bit more then just display the date as is?',
            'Date of birth',
            'Flight tickets',
            'Property management',
            'Date of birth',
          ],
        );
      },
      rightBuilder: (context) {
        return Image.asset(
          'assets/DisplayDate.webp',
          fit: BoxFit.cover,
        );
      },
    );
  }
}

class FlightDate extends FlutterDeckSlideWidget {
  const FlightDate()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/FlightDate',
            header: FlutterDeckHeaderConfiguration(
              title: 'Flight date',
            ),
            steps: 2,
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      leftBuilder: (context) {
        return FlutterDeckBulletList(
          useSteps: true,
          items: const [
            'departure/arrival',
            'return/arrival',
          ],
        );
      },
      rightBuilder: (context) {
        return Image.asset(
          'assets/FlightDate.webp',
          fit: BoxFit.cover,
        );
      },
    );
  }
}

class TimeTravel extends FlutterDeckSlideWidget {
  const TimeTravel()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/TimeTravel',
            header: FlutterDeckHeaderConfiguration(
              title: 'Property management',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => Center(
        child: InteractiveViewer(
          child: Image.asset(
            'assets/TimeTravel.webp',
            isAntiAlias: true,
            filterQuality: FilterQuality.high,
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
  }
}

class TestDate extends FlutterDeckSlideWidget {
  const TestDate()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/TestDate',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.bigFact(
      title: 'Testing',
      subtitle: ".findByText([your_date])",
      theme: FlutterDeckTheme.of(context).copyWith(
        bigFactSlideTheme: const FlutterDeckBigFactSlideThemeData(
          titleTextStyle: TextStyle(color: Colors.amber),
        ),
      ),
    );
  }
}

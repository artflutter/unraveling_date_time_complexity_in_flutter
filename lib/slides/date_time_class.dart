import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class DateTimeClass extends FlutterDeckSlideWidget {
  const DateTimeClass()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/DateTimeClass',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => Row(
        children: [
          Expanded(
            child: InteractiveViewer(
              child: Image.asset(
                'assets/DateTimeClass.png',
                isAntiAlias: true,
                filterQuality: FilterQuality.high,
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DOB extends FlutterDeckSlideWidget {
  const DOB()
      : super(
    configuration: const FlutterDeckSlideConfiguration(
      route: '/DOB',
      header: FlutterDeckHeaderConfiguration(
        title: 'Display DOB',
      ),
    ),
  );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => Row(
        children: [
          Expanded(
            child: InteractiveViewer(
              child: Image.asset(
                'assets/dob.png',
                isAntiAlias: true,
                filterQuality: FilterQuality.high,
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class DOB2 extends FlutterDeckSlideWidget {
  const DOB2()
      : super(
    configuration: const FlutterDeckSlideConfiguration(
      route: '/DO2',
      header: FlutterDeckHeaderConfiguration(
        title: 'Display DOB',
      ),
    ),
  );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => Row(
        children: [
          Expanded(
            child: InteractiveViewer(
              child: Image.asset(
                'assets/dob2.png',
                isAntiAlias: true,
                filterQuality: FilterQuality.high,
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


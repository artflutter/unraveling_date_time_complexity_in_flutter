import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ManipulateDate extends FlutterDeckSlideWidget {
  const ManipulateDate()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/ManipulateDate',
            header: FlutterDeckHeaderConfiguration(
              title: 'Manipulating',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => Center(
        child: InteractiveViewer(
          child: Image.asset(
            'assets/ManipulateDate.png',
            isAntiAlias: true,
            filterQuality: FilterQuality.high,
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
  }
}

class HowToManipulateDate extends FlutterDeckSlideWidget {
  const HowToManipulateDate()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/HowToManipulateDate',
            header: FlutterDeckHeaderConfiguration(
              title: 'How to manipulate date?',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const SingleChildScrollView(
        key: PageStorageKey('RfgRegistrationAsyncValidatorLeft'),
        child: Center(
          child: FlutterDeckCodeHighlight(
            language: 'dart',
            code: '''
            final d = DateTime(2024, 3, 30, 10, 0, 0);
            
            // RESPECT DST
            d.add(Duration(days: 1));            
            // OUTPUT 2024-03-31 11:00:00.000
            
            
            // IGNORE DST
            DateTime(d.year, d.month, d.day + 1, d.hour, d.minute);
            // OUTPUT 2024-03-31 10:00:00.000            
            ''',
          ),
        ),
      ),
    );
  }
}

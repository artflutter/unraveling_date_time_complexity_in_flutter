import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class PhoneNumber extends FlutterDeckSlideWidget {
  const PhoneNumber()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/PhoneNumber',
            header: FlutterDeckHeaderConfiguration(
              title: 'Parsing',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.bigFact(
      title: '+6477191451',
      subtitle: "what is this?",
      theme: FlutterDeckTheme.of(context).copyWith(
        bigFactSlideTheme: const FlutterDeckBigFactSlideThemeData(
          titleTextStyle: TextStyle(color: Colors.orange),
        ),
      ),
    );
  }
}

class PhoneNumberParse extends FlutterDeckSlideWidget {
  const PhoneNumberParse()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/PhoneNumberParse',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => Center(
        child: InteractiveViewer(
          child: Image.asset(
            'assets/PhoneNumberParse.png',
            isAntiAlias: true,
            filterQuality: FilterQuality.high,
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
  }
}

class DateOverflow extends FlutterDeckSlideWidget {
  const DateOverflow()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/DateOverflow',
            header: FlutterDeckHeaderConfiguration(
              title: 'Parsing',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.bigFact(
      title: '123456789',
      subtitle: "what is this?",
      theme: FlutterDeckTheme.of(context).copyWith(
        bigFactSlideTheme: const FlutterDeckBigFactSlideThemeData(
          titleTextStyle: TextStyle(color: Colors.orange),
        ),
      ),
    );
  }
}

class DateOverflowParse extends FlutterDeckSlideWidget {
  const DateOverflowParse()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/DateOverflowParse',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => InteractiveViewer(
        child: Image.asset(
          'assets/DateOverflowParse.png',
          isAntiAlias: true,
          filterQuality: FilterQuality.high,
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}

class HowToParse extends FlutterDeckSlideWidget {
  const HowToParse()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/HowToParse',
            header: FlutterDeckHeaderConfiguration(
              title: 'How to parse dates?',
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
            
            // NON RELIABLE SOURCE
            final nonReliable = DateTime.tryParse('20031212');
            // OUTPUT 2003-12-12 00:00:00.000
            
            // SEMI RELIABLE SOURCE
            // static final RegExp _parseFormat =
            //       RegExp(r'^([+-]?\d{4,6})-?(\d\d)-?(\d\d)' // Day part.
            //           r'(?:[ T](\d\d)(?::?(\d\d)(?::?(\d\d)(?:[.,](\d+))?)?)?' // Time part.
            //           r'( ?[zZ]| ?([-+])(\d\d)(?::?(\d\d))?)?)?\$'); // Timezone part.
            if(_parseFormat.hasMatch(yourString) {
              final semiReliable = DateTime.tryParse(yourString);
            }
            
            // RELIABLE SOURCE
            final reliable = DateFormat('yyyy-MM-dd').parseStrict('2023-10-19');
            // OUTPUT 2023-10-19 00:00:00.000         
            final reliable = DateFormat('yyyy-MM-dd').parseStrict('2023-19-10');
            // OUTPUT FormatException
            ''',
          ),
        ),
      ),
    );
  }
}

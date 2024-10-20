import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class TimezoneClass extends FlutterDeckSlideWidget {
  const TimezoneClass()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/TimezoneClass',
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
                'assets/Timezone.png',
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

class InitializeTimezoneClass extends FlutterDeckSlideWidget {
  const InitializeTimezoneClass()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/InitializeTimezoneClass',
            header: FlutterDeckHeaderConfiguration(
              title: 'How to initialize?',
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
                'assets/InitializeTimezoneClass.png',
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

class InitializeTimezoneClassManually extends FlutterDeckSlideWidget {
  const InitializeTimezoneClassManually()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/InitializeTimezoneClassManually',
            header: FlutterDeckHeaderConfiguration(
              title: 'How to initialize?',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const SingleChildScrollView(
        key: PageStorageKey('InitializeTimezoneClassManually'),
        child: Center(
          child: FlutterDeckCodeHighlight(
            language: 'dart',
            code: '''
            // WEB
            import 'package:timezone/browser.dart';

            Future<void> initTimezones() async {
              await initializeTimeZone('assets/packages/timezone/data/latest.tzf');
            }
            
            // NON WEB
            import 'package:flutter/services.dart';
            import 'package:timezone/timezone.dart';
            
            Future<void> initTimezones() async {
              initializeDatabase(
                Uint8List.sublistView(
                  await rootBundle.load('packages/timezone/data/latest.tzf'),
                ),
              );
            }
            ''',
          ),
        ),
      ),
    );
  }
}

class TimeZoneBrowser extends FlutterDeckSlideWidget {
  const TimeZoneBrowser()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/TimeZoneBrowser',
            header: FlutterDeckHeaderConfiguration(
              title: 'How to initialize?',
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
                'assets/TimeZoneBrowser.png',
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

class InitializeTimezoneClassTz extends FlutterDeckSlideWidget {
  const InitializeTimezoneClassTz()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/InitializeTimezoneClassTz',
            header: FlutterDeckHeaderConfiguration(
              title: 'How to initialize?',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      splitRatio: const SplitSlideRatio(left: 4, right: 6),
      leftBuilder: (context) {
        return const SingleChildScrollView(
          child: FlutterDeckCodeHighlight(
            language: 'dart',
            code: '''
import 'package:timezone/data/latest.dart' as tz;

void main() {
  tz.initializeTimeZones();
}            
              ''',
          ),
        );
      },
      rightBuilder: (context) {
        return InteractiveViewer(
          child: Image.asset(
            'assets/InitializeTimezoneClassTz.png',
            isAntiAlias: true,
            filterQuality: FilterQuality.high,
            fit: BoxFit.fitHeight,
          ),
        );
      },
    );
  }
}

class TimeZoneDart extends FlutterDeckSlideWidget {
  const TimeZoneDart()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/TimeZoneDart',
            header: FlutterDeckHeaderConfiguration(
              title: 'How to initialize?',
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
                'assets/TimeZoneDart.png',
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

class HowToUseTimezone extends FlutterDeckSlideWidget {
  const HowToUseTimezone()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/HowToUseTimezone',
            header: FlutterDeckHeaderConfiguration(
              title: 'How to use?',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const SingleChildScrollView(
        key: PageStorageKey('HowToUseTimezone'),
        child: Center(
          child: FlutterDeckCodeHighlight(
            language: 'dart',
            code: '''
import 'package:timezone/browser.dart' as tz;

Future<void> setup() async {
  await tz.initializeTimeZone();
  var detroit = tz.getLocation('America/Detroit');
  var now = tz.TZDateTime.now(detroit);
}
            ''',
          ),
        ),
      ),
    );
  }
}

class WholeAppShift extends FlutterDeckSlideWidget {
  const WholeAppShift()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/WholeAppShift',
            header: FlutterDeckHeaderConfiguration(
              title: 'Whole app shift',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const SingleChildScrollView(
        key: PageStorageKey('HowToUseTimezone'),
        child: Center(
          child: FlutterDeckCodeHighlight(
            language: 'dart',
            code: '''
import 'dart:convert';

import 'package:dio/dio.dart';

typedef DateInterceptorHandler = DateTime Function(DateTime);

// this is RE taken from DateTime.parse function and modified to prevent parsing
// random integers as date time
final RegExp dateTimeRegExp = RegExp(r'^(\d{4,6})-(\d\d)-(\d\d)' // Day part.
    r'(?:[ T](\d\d)(?::(\d\d)(?::(\d\d)(?:[.,](\d+))?)?)?' // Time part.
    r'( ?[zZ]| ?([-+])(\d\d)(?::?(\d\d))?)?)?\$'); // Timezone part.

class DateInterceptor extends Interceptor {
  late final DateInterceptorHandler responseHandler;
  late final DateInterceptorHandler requestHandler;

  DateInterceptor() {
    responseHandler = (dateTime) => dateTime.toBuildingFromUtc();
    requestHandler = (dateTime) => dateTime.toUtcFromBuilding();
  }

  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) {
    final dynamic data = response.data;
    if (data is Map<String, dynamic> || data is List<dynamic>) {
      response.data = _parseJson(data, responseHandler);
    }
    handler.next(response);
  }

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    final dynamic data = options.data;
    if (data is Map<String, dynamic> || data is List<dynamic>) {
      options.data = _parseJson(data, requestHandler);
    }

    if (data is String) {
      // this place was here before writing tests it is potentially redundant
      // first of all this place could crash if string is unparsable json
      // another potential weakness is that we are not only transforming the date
      // but changing type from string to json
      // probably should be removed after careful consideration
      options.data = _parseJson(jsonDecode(data), requestHandler);
    }

    options.queryParameters =
        _parseJson(options.queryParameters, requestHandler)
            as Map<String, dynamic>;

    handler.next(options);
  }

  dynamic _parseJson(dynamic json, DateTime Function(DateTime) handler) {
    if (json is Map<String, dynamic>) {
      final Map<String, dynamic> parsedJson = {};
      json.forEach((key, value) {
        parsedJson[key] = _parseJson(value, handler);
      });
      return parsedJson;
    } else if (json is List<dynamic>) {
      return json.map((item) => _parseJson(item, handler)).toList();
    } else {
      if (json is DateTime) {
        // this place was here before writing tests it is potentially redundant
        // as far as it is not expected to receive DateTime object from server
        // another potential weakness is that we are not only transforming the date
        // but changing type which probably not desired behaviour
        // probably should be removed after careful consideration
        return handler(json).toIso8601String();
      } else if (json is String &&
          json.length > 10 &&
          // we are validating the string against date time reg exp only after several other checks
          // reg exp are not among the top performers so makes sense to reduce the items arriving to that point
          dateTimeRegExp.hasMatch(json)) {
        final modifiedValue = DateTime.tryParse(json);
        if (modifiedValue != null) {
          return handler(modifiedValue).toIso8601String();
        }
      }

      return json;
    }
  }
}
            ''',
          ),
        ),
      ),
    );
  }
}

class Testing extends FlutterDeckSlideWidget {
  const Testing()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/Testing',
            header: FlutterDeckHeaderConfiguration(
              title: 'Testing',
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
                'assets/Testing.png',
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

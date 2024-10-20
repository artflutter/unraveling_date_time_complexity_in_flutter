import 'package:date_time/slides/agenda.dart';
import 'package:date_time/slides/date_time_class.dart';
import 'package:date_time/slides/disclamer.dart';
import 'package:date_time/slides/display.dart';
import 'package:date_time/slides/display_date.dart';
import 'package:date_time/slides/manipulate.dart';
import 'package:date_time/slides/manipulation.dart';
import 'package:date_time/slides/manupulate_date.dart';
import 'package:date_time/slides/parse.dart';
import 'package:date_time/slides/parsing_date.dart';
import 'package:date_time/slides/qr_linkedin.dart';
import 'package:date_time/slides/qr_presentation.dart';
import 'package:date_time/slides/talk_theme.dart';
import 'package:date_time/slides/timezone.dart';
import 'package:date_time/slides/who_am_i.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_deck/flutter_deck.dart';

void main() {
  runApp(const DateTimeX());
}

class DateTimeX extends StatelessWidget {
  const DateTimeX({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterDeckCodeHighlightTheme(
      data: FlutterDeckCodeHighlightThemeData(
        textStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontSize: 35,
            ),
      ),
      child: FlutterDeckApp(
        configuration: const FlutterDeckConfiguration(
          controls: FlutterDeckControlsConfiguration(
            presenterToolbarVisible: true,
            shortcuts: FlutterDeckShortcutsConfiguration(
              enabled: true,
              nextSlide: SingleActivator(LogicalKeyboardKey.arrowRight),
              previousSlide: SingleActivator(LogicalKeyboardKey.arrowLeft),
              toggleMarker: SingleActivator(LogicalKeyboardKey.keyM),
              toggleNavigationDrawer: SingleActivator(
                LogicalKeyboardKey.period,
                control: true,
                meta: true,
              ),
            ),
          ),
          footer: FlutterDeckFooterConfiguration(
            showSlideNumbers: true,
            widget: FlutterLogo(),
          ),
          header: FlutterDeckHeaderConfiguration(
            showHeader: false,
          ),
          marker: FlutterDeckMarkerConfiguration(
            color: Colors.cyan,
            strokeWidth: 8.0,
          ),
          progressIndicator: FlutterDeckProgressIndicator.gradient(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.pink, Colors.purple],
            ),
            backgroundColor: Colors.black,
          ),
          transition: FlutterDeckTransition.fade(),
        ),
        slides: const [
          TalkTopic(),
          WhoAmI(),
          Agenda(),
          Manipulation(),
          Parse(),
          Manipulate(),
          Display(),
          TestDate(),
          Disclaimer(),
          PhoneNumber(),
          PhoneNumberParse(),
          DateOverflow(),
          DateOverflowParse(),
          HowToParse(),
          ManipulateDate(),
          HowToManipulateDate(),
          Display2(),
          DisplayDate(),
          DOB(),
          DOB2(),
          FlightDate(),
          TimeTravel(),
          DateTimeClass(),
          TimezoneClass(),
          InitializeTimezoneClass(),
          TimeZoneBrowser(),
          InitializeTimezoneClassTz(),
          TimeZoneDart(),
          InitializeTimezoneClassManually(),
          HowToUseTimezone(),
          WholeAppShift(),
          Testing(),
          QrPresentation(),
          QrLinkedin(),
        ],
      ),
    );
  }
}

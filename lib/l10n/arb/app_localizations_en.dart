// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get youWillReceive => 'You will receive';

  @override
  String get estimatedFee => 'Estimated fee';

  @override
  String get equalSign => '≈';

  @override
  String get crypto => 'Crypto';

  @override
  String get fiat => 'FIAT';

  @override
  String get estimatedTime => 'Estimated time';

  @override
  String get change => 'Change';

  @override
  String get min => 'Min';

  @override
  String get ten => '10';

  @override
  String get wereSorryWeEncounterAnErrorTryingToGetTheFees => 'We\'re sorry, we encounter an error when we try to get the currency fee';
}

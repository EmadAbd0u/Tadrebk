import 'package:flutter/foundation.dart';
import 'package:flutter/cupertino.dart';
import '../core/app_export.dart';
import 'ar_eg/ar_eg_translations.dart';
import 'en_us/en_us_translations.dart';

class AppLocalization {
  AppLocalization(this.locale);

  Locale locale;

  // تعريف قاموس لترجمات النصوص بحسب اللغات المدعومة
  static final Map<String, Map<String, String>> _localizedValues = {'ar': arEg, 'en': enUs};

  // دالة استرجاع الـ AppLocalization الحالية
  static AppLocalization of() {
    return Localizations.of<AppLocalization>(
        NavigatorService.navigatorKey.currentContext!, AppLocalization)!;
  }

  // دالة إعادة قائمة باللغات المدعومة
  static List<String> languages() => _localizedValues.keys.toList();

  // دالة استرجاع نص مترجم
  String getString(String text) =>
      _localizedValues[locale.languageCode]![text] ?? text;
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalization> {
  const AppLocalizationDelegate();

  // تحديد ما إذا كانت اللغة مدعومة
  @override
  bool isSupported(Locale locale) =>
      AppLocalization.languages().contains(locale.languageCode);


  // تحميل ترجمة اللغة المعينة
  @override
  Future<AppLocalization> load(Locale locale) {
    return SynchronousFuture<AppLocalization>(AppLocalization(locale));
  }

  // تحديد ما إذا كان يجب إعادة تحميل الترجمة
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;
}

extension LocalizationExtension on String {
  String get en => AppLocalization.of().getString(this);
  String get ar => AppLocalization.of().getString(this);
}

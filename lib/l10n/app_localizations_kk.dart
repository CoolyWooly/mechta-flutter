// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kazakh (`kk`).
class AppLocalizationsKk extends AppLocalizations {
  AppLocalizationsKk([String locale = 'kk']) : super(locale);

  @override
  String get home => 'Басты бет';

  @override
  String get catalog => 'Каталог';

  @override
  String get cart => 'Себет';

  @override
  String get favorites => 'Таңдаулылар';

  @override
  String get profile => 'Профиль';

  @override
  String get loadingError => 'Жүктеу қатесі';

  @override
  String get retry => 'Қайталау';

  @override
  String get onboardingWelcomeTitle => 'Mechta-ға қош келдіңіз';

  @override
  String get onboardingWelcomeDesc =>
      'Мыңдаған электроника және тұрмыстық техника бір қолданбада';

  @override
  String get onboardingDeliveryTitle => 'Жылдам жеткізу';

  @override
  String get onboardingDeliveryDesc =>
      'Тапсырысыңызды бүкіл Қазақстан бойынша ыңғайлы уақытта жеткіземіз';

  @override
  String get onboardingOffersTitle => 'Тиімді ұсыныстар';

  @override
  String get onboardingOffersDesc =>
      'Жеңілдіктер, акциялар және тұрақты клиенттерге арналған бонустық бағдарлама';

  @override
  String get skip => 'Өткізу';

  @override
  String get next => 'Келесі';

  @override
  String get start => 'Бастау';

  @override
  String get popularCategories => 'Танымал санаттар';

  @override
  String get popularBrands => 'Танымал брендтер';

  @override
  String get news => 'Жаңалықтар';

  @override
  String get socialMedia => 'Біз әлеуметтік желілерде';

  @override
  String get brands => 'Брендтер';

  @override
  String get product => 'Тауар';

  @override
  String addToCartWithPrice(String price) {
    return 'Себетке — $price ₸';
  }

  @override
  String get outOfStock => 'Қоймада жоқ';

  @override
  String get inStock => 'Қоймада бар';

  @override
  String productCode(String code) {
    return 'Код: $code';
  }

  @override
  String get tradeInAvailable => 'Trade-In қолжетімді';

  @override
  String get specifications => 'Сипаттамалар';

  @override
  String get description => 'Сипаттама';

  @override
  String get emptyCart => 'Себет бос';

  @override
  String get noFavorites => 'Таңдаулы тауарлар жоқ';

  @override
  String get logout => 'Аккаунттан шығу';

  @override
  String get logoutConfirmTitle => 'Шығу';

  @override
  String get logoutConfirmMessage => 'Аккаунттан шығуға сенімдісіз бе?';

  @override
  String get cancel => 'Бас тарту';

  @override
  String get logoutAction => 'Шығу';

  @override
  String get signInPrompt => 'Аккаунтқа кіріңіз';

  @override
  String get signIn => 'Кіру';

  @override
  String get selectCity => 'Қаланы таңдаңыз';

  @override
  String get city => 'Қала';

  @override
  String get promotions => 'Акциялар';

  @override
  String daysLeft(int days) {
    return '$days күн қалды';
  }

  @override
  String get details => 'Толығырақ';

  @override
  String get promotion => 'Акция';

  @override
  String get enterSmsCode => 'СМС кодын енгізіңіз';

  @override
  String get signInTitle => 'Кіру';

  @override
  String get phoneNumber => 'Телефон нөмірі';

  @override
  String get getSms => 'СМС алу';

  @override
  String get smsCode => 'СМС коды';

  @override
  String get send => 'Жіберу';

  @override
  String get language => 'Тіл';

  @override
  String get russian => 'Орысша';

  @override
  String get kazakh => 'Қазақша';
}

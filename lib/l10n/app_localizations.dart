import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_kk.dart';
import 'app_localizations_ru.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ru'),
    Locale('kk'),
  ];

  /// No description provided for @home.
  ///
  /// In ru, this message translates to:
  /// **'Главная'**
  String get home;

  /// No description provided for @catalog.
  ///
  /// In ru, this message translates to:
  /// **'Каталог'**
  String get catalog;

  /// No description provided for @cart.
  ///
  /// In ru, this message translates to:
  /// **'Корзина'**
  String get cart;

  /// No description provided for @favorites.
  ///
  /// In ru, this message translates to:
  /// **'Избранное'**
  String get favorites;

  /// No description provided for @profile.
  ///
  /// In ru, this message translates to:
  /// **'Профиль'**
  String get profile;

  /// No description provided for @loadingError.
  ///
  /// In ru, this message translates to:
  /// **'Ошибка загрузки'**
  String get loadingError;

  /// No description provided for @retry.
  ///
  /// In ru, this message translates to:
  /// **'Повторить'**
  String get retry;

  /// No description provided for @onboardingWelcomeTitle.
  ///
  /// In ru, this message translates to:
  /// **'Добро пожаловать в Mechta'**
  String get onboardingWelcomeTitle;

  /// No description provided for @onboardingWelcomeDesc.
  ///
  /// In ru, this message translates to:
  /// **'Тысячи товаров электроники и бытовой техники в одном приложении'**
  String get onboardingWelcomeDesc;

  /// No description provided for @onboardingDeliveryTitle.
  ///
  /// In ru, this message translates to:
  /// **'Быстрая доставка'**
  String get onboardingDeliveryTitle;

  /// No description provided for @onboardingDeliveryDesc.
  ///
  /// In ru, this message translates to:
  /// **'Доставим ваш заказ в удобное время по всему Казахстану'**
  String get onboardingDeliveryDesc;

  /// No description provided for @onboardingOffersTitle.
  ///
  /// In ru, this message translates to:
  /// **'Выгодные предложения'**
  String get onboardingOffersTitle;

  /// No description provided for @onboardingOffersDesc.
  ///
  /// In ru, this message translates to:
  /// **'Скидки, акции и бонусная программа для постоянных клиентов'**
  String get onboardingOffersDesc;

  /// No description provided for @skip.
  ///
  /// In ru, this message translates to:
  /// **'Пропустить'**
  String get skip;

  /// No description provided for @next.
  ///
  /// In ru, this message translates to:
  /// **'Далее'**
  String get next;

  /// No description provided for @start.
  ///
  /// In ru, this message translates to:
  /// **'Начать'**
  String get start;

  /// No description provided for @popularCategories.
  ///
  /// In ru, this message translates to:
  /// **'Популярные категории'**
  String get popularCategories;

  /// No description provided for @popularBrands.
  ///
  /// In ru, this message translates to:
  /// **'Популярные бренды'**
  String get popularBrands;

  /// No description provided for @news.
  ///
  /// In ru, this message translates to:
  /// **'Новости'**
  String get news;

  /// No description provided for @socialMedia.
  ///
  /// In ru, this message translates to:
  /// **'Мы в соцсетях'**
  String get socialMedia;

  /// No description provided for @brands.
  ///
  /// In ru, this message translates to:
  /// **'Бренды'**
  String get brands;

  /// No description provided for @products.
  ///
  /// In ru, this message translates to:
  /// **'Товары'**
  String get products;

  /// No description provided for @product.
  ///
  /// In ru, this message translates to:
  /// **'Товар'**
  String get product;

  /// No description provided for @addToCartWithPrice.
  ///
  /// In ru, this message translates to:
  /// **'В корзину — {price} ₸'**
  String addToCartWithPrice(String price);

  /// No description provided for @outOfStock.
  ///
  /// In ru, this message translates to:
  /// **'Нет в наличии'**
  String get outOfStock;

  /// No description provided for @inStock.
  ///
  /// In ru, this message translates to:
  /// **'В наличии'**
  String get inStock;

  /// No description provided for @productCode.
  ///
  /// In ru, this message translates to:
  /// **'Код: {code}'**
  String productCode(String code);

  /// No description provided for @tradeInAvailable.
  ///
  /// In ru, this message translates to:
  /// **'Доступен Trade-In'**
  String get tradeInAvailable;

  /// No description provided for @specifications.
  ///
  /// In ru, this message translates to:
  /// **'Характеристики'**
  String get specifications;

  /// No description provided for @description.
  ///
  /// In ru, this message translates to:
  /// **'Описание'**
  String get description;

  /// No description provided for @emptyCart.
  ///
  /// In ru, this message translates to:
  /// **'Корзина пуста'**
  String get emptyCart;

  /// No description provided for @noFavorites.
  ///
  /// In ru, this message translates to:
  /// **'Нет избранных товаров'**
  String get noFavorites;

  /// No description provided for @logout.
  ///
  /// In ru, this message translates to:
  /// **'Выйти из аккаунта'**
  String get logout;

  /// No description provided for @logoutConfirmTitle.
  ///
  /// In ru, this message translates to:
  /// **'Выход'**
  String get logoutConfirmTitle;

  /// No description provided for @logoutConfirmMessage.
  ///
  /// In ru, this message translates to:
  /// **'Вы уверены, что хотите выйти из аккаунта?'**
  String get logoutConfirmMessage;

  /// No description provided for @cancel.
  ///
  /// In ru, this message translates to:
  /// **'Отмена'**
  String get cancel;

  /// No description provided for @logoutAction.
  ///
  /// In ru, this message translates to:
  /// **'Выйти'**
  String get logoutAction;

  /// No description provided for @signInPrompt.
  ///
  /// In ru, this message translates to:
  /// **'Войдите в аккаунт'**
  String get signInPrompt;

  /// No description provided for @signIn.
  ///
  /// In ru, this message translates to:
  /// **'Войти'**
  String get signIn;

  /// No description provided for @selectCity.
  ///
  /// In ru, this message translates to:
  /// **'Выберите город'**
  String get selectCity;

  /// No description provided for @city.
  ///
  /// In ru, this message translates to:
  /// **'Город'**
  String get city;

  /// No description provided for @promotions.
  ///
  /// In ru, this message translates to:
  /// **'Акции'**
  String get promotions;

  /// No description provided for @daysLeft.
  ///
  /// In ru, this message translates to:
  /// **'Осталось {days} дн.'**
  String daysLeft(int days);

  /// No description provided for @details.
  ///
  /// In ru, this message translates to:
  /// **'Подробнее'**
  String get details;

  /// No description provided for @promotion.
  ///
  /// In ru, this message translates to:
  /// **'Акция'**
  String get promotion;

  /// No description provided for @enterSmsCode.
  ///
  /// In ru, this message translates to:
  /// **'Введите код из СМС'**
  String get enterSmsCode;

  /// No description provided for @signInTitle.
  ///
  /// In ru, this message translates to:
  /// **'Вход'**
  String get signInTitle;

  /// No description provided for @phoneNumber.
  ///
  /// In ru, this message translates to:
  /// **'Номер телефона'**
  String get phoneNumber;

  /// No description provided for @getSms.
  ///
  /// In ru, this message translates to:
  /// **'Получить СМС'**
  String get getSms;

  /// No description provided for @smsCode.
  ///
  /// In ru, this message translates to:
  /// **'Код из СМС'**
  String get smsCode;

  /// No description provided for @send.
  ///
  /// In ru, this message translates to:
  /// **'Отправить'**
  String get send;

  /// No description provided for @language.
  ///
  /// In ru, this message translates to:
  /// **'Язык'**
  String get language;

  /// No description provided for @russian.
  ///
  /// In ru, this message translates to:
  /// **'Русский'**
  String get russian;

  /// No description provided for @kazakh.
  ///
  /// In ru, this message translates to:
  /// **'Қазақша'**
  String get kazakh;

  /// No description provided for @bonuses.
  ///
  /// In ru, this message translates to:
  /// **'Бонусы'**
  String get bonuses;

  /// No description provided for @chips.
  ///
  /// In ru, this message translates to:
  /// **'Чипсы'**
  String get chips;

  /// No description provided for @activeBonuses.
  ///
  /// In ru, this message translates to:
  /// **'Активные'**
  String get activeBonuses;

  /// No description provided for @blockedBonuses.
  ///
  /// In ru, this message translates to:
  /// **'Заблокированные'**
  String get blockedBonuses;

  /// No description provided for @expiringSoon.
  ///
  /// In ru, this message translates to:
  /// **'Сгорает скоро'**
  String get expiringSoon;

  /// No description provided for @expirationDate.
  ///
  /// In ru, this message translates to:
  /// **'Дата сгорания'**
  String get expirationDate;

  /// No description provided for @bonusHistoryEmpty.
  ///
  /// In ru, this message translates to:
  /// **'История бонусов пуста'**
  String get bonusHistoryEmpty;

  /// No description provided for @order.
  ///
  /// In ru, this message translates to:
  /// **'Заказ'**
  String get order;

  /// No description provided for @ourShops.
  ///
  /// In ru, this message translates to:
  /// **'Наши магазины'**
  String get ourShops;

  /// No description provided for @list.
  ///
  /// In ru, this message translates to:
  /// **'Список'**
  String get list;

  /// No description provided for @map.
  ///
  /// In ru, this message translates to:
  /// **'Карта'**
  String get map;

  /// No description provided for @shopsEmpty.
  ///
  /// In ru, this message translates to:
  /// **'Магазины не найдены'**
  String get shopsEmpty;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['kk', 'ru'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'kk':
      return AppLocalizationsKk();
    case 'ru':
      return AppLocalizationsRu();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}

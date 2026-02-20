// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get home => 'Главная';

  @override
  String get catalog => 'Каталог';

  @override
  String get cart => 'Корзина';

  @override
  String get favorites => 'Избранное';

  @override
  String get profile => 'Профиль';

  @override
  String get loadingError => 'Ошибка загрузки';

  @override
  String get retry => 'Повторить';

  @override
  String get onboardingWelcomeTitle => 'Добро пожаловать в Mechta';

  @override
  String get onboardingWelcomeDesc =>
      'Тысячи товаров электроники и бытовой техники в одном приложении';

  @override
  String get onboardingDeliveryTitle => 'Быстрая доставка';

  @override
  String get onboardingDeliveryDesc =>
      'Доставим ваш заказ в удобное время по всему Казахстану';

  @override
  String get onboardingOffersTitle => 'Выгодные предложения';

  @override
  String get onboardingOffersDesc =>
      'Скидки, акции и бонусная программа для постоянных клиентов';

  @override
  String get skip => 'Пропустить';

  @override
  String get next => 'Далее';

  @override
  String get start => 'Начать';

  @override
  String get popularCategories => 'Популярные категории';

  @override
  String get popularBrands => 'Популярные бренды';

  @override
  String get news => 'Новости';

  @override
  String get socialMedia => 'Мы в соцсетях';

  @override
  String get brands => 'Бренды';

  @override
  String get products => 'Товары';

  @override
  String get product => 'Товар';

  @override
  String addToCartWithPrice(String price) {
    return 'В корзину — $price ₸';
  }

  @override
  String get outOfStock => 'Нет в наличии';

  @override
  String get inStock => 'В наличии';

  @override
  String productCode(String code) {
    return 'Код: $code';
  }

  @override
  String get tradeInAvailable => 'Доступен Trade-In';

  @override
  String get specifications => 'Характеристики';

  @override
  String get description => 'Описание';

  @override
  String get emptyCart => 'Корзина пуста';

  @override
  String get inCart => 'В корзине';

  @override
  String get noFavorites => 'Нет избранных товаров';

  @override
  String get logout => 'Выйти из аккаунта';

  @override
  String get logoutConfirmTitle => 'Выход';

  @override
  String get logoutConfirmMessage =>
      'Вы уверены, что хотите выйти из аккаунта?';

  @override
  String get cancel => 'Отмена';

  @override
  String get logoutAction => 'Выйти';

  @override
  String get signInPrompt => 'Войдите в аккаунт';

  @override
  String get signIn => 'Войти';

  @override
  String get selectCity => 'Выберите город';

  @override
  String get city => 'Город';

  @override
  String get promotions => 'Акции';

  @override
  String daysLeft(int days) {
    return 'Осталось $days дн.';
  }

  @override
  String get details => 'Подробнее';

  @override
  String get promotion => 'Акция';

  @override
  String get enterSmsCode => 'Введите код из СМС';

  @override
  String get signInTitle => 'Вход';

  @override
  String get phoneNumber => 'Номер телефона';

  @override
  String get getSms => 'Получить СМС';

  @override
  String get smsCode => 'Код из СМС';

  @override
  String get send => 'Отправить';

  @override
  String get language => 'Язык';

  @override
  String get russian => 'Русский';

  @override
  String get kazakh => 'Қазақша';

  @override
  String get bonuses => 'Бонусы';

  @override
  String get chips => 'Чипсы';

  @override
  String get activeBonuses => 'Активные';

  @override
  String get blockedBonuses => 'Заблокированные';

  @override
  String get expiringSoon => 'Сгорает скоро';

  @override
  String get expirationDate => 'Дата сгорания';

  @override
  String get bonusHistoryEmpty => 'История бонусов пуста';

  @override
  String get order => 'Заказ';

  @override
  String get ourShops => 'Наши магазины';

  @override
  String get list => 'Список';

  @override
  String get map => 'Карта';

  @override
  String get shopsEmpty => 'Магазины не найдены';

  @override
  String get searchProducts => 'Искать товары';

  @override
  String get cartSignInPrompt =>
      'Войдите в аккаунт, чтобы увидеть товары в корзине';

  @override
  String get cartTotal => 'Итого';

  @override
  String get checkout => 'Оформить заказ';

  @override
  String get gift => 'Подарок';

  @override
  String get piece => 'шт.';

  @override
  String get discount => 'Скидка';

  @override
  String get couponDiscount => 'Скидка по купону';
}

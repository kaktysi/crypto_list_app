import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../features/crypto_coin/crypto_coin.dart';
import '../features/crypto_list/crypto_list.dart';
import '../repositories/crypto_coins/crypto_coins.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: CryptoCoinRoute.page),
    AutoRoute(page: CryptoListRoute.page, path: '/'),
  ];
}

// final routes = {
//   '/': (context) => const CryptoListScreen(),
//   '/coin': (context) => const CryptoCoinScreen(),
// };
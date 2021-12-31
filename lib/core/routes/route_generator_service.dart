import 'package:cripto/modules/auth/presentation/pages/on_boarding_crypto_page.dart';
import 'package:cripto/modules/auth/presentation/pages/sign_in_page.dart';
import 'package:cripto/modules/auth/presentation/pages/sign_up_page.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/on_boarding':
        return MaterialPageRoute(builder: (context) => const OnboardingCryptoPage());

      case '/sign_up':
        return MaterialPageRoute(builder: (context) => const SignUpPage());

      case '/sign_in':
        return MaterialPageRoute(builder: (context) => const SignInPage());
    }
  }
}

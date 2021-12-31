import 'package:cripto/modules/auth/presentation/pages/on_boarding_crypto_page.dart';
import 'package:cripto/modules/auth/presentation/pages/register_phone.dart';
import 'package:cripto/modules/auth/presentation/pages/sign_in_page.dart';
import 'package:cripto/modules/auth/presentation/pages/sign_up_page.dart';
import 'package:cripto/modules/auth/presentation/pages/sign_up_sucess_page.dart';
import 'package:cripto/modules/auth/presentation/pages/sms_verification.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      //onBoarding:
      case '/on_boarding':
        return MaterialPageRoute(builder: (context) => const OnboardingCryptoPage());

      //Auth Process:
      case '/sign_up':
        return MaterialPageRoute(builder: (context) => const SignUpPage());

      case '/register_phone':
        return MaterialPageRoute(builder: (context) => const RegisterPhonePage());

      case '/sms_verification':
        return MaterialPageRoute(builder: (context) => const SMSVerificationPage());

      case '/sign_up_sucess':
        return MaterialPageRoute(builder: (context) => const SignUpSuccessPage());

      case '/sign_in':
        return MaterialPageRoute(builder: (context) => const SignInPage());
    }
  }
}

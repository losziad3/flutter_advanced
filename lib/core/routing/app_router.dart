
import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/routing/routes.dart';
import 'package:flutter_advanced/features/login/ui/login_screen.dart';

import '../../features/onboarding/onboarding_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings){
    switch(settings.name){
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => const OnboardingScreen(),
        );
        case Routes.loginScreen:
          return MaterialPageRoute(
            settings: settings,
            builder: (context) => const LoginScreen(),
          );
      default :
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => const Placeholder(),
        );
    }
  }
}
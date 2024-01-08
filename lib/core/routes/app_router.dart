import 'package:flutter/material.dart';
import 'package:flutter_advanced_project/core/di/dependency_injection.dart';
import 'package:flutter_advanced_project/core/routes/routes.dart';
import 'package:flutter_advanced_project/features/home/ui/screen/home_screen.dart';
import 'package:flutter_advanced_project/features/login/logic/cubit/login_cubit.dart';
import 'package:flutter_advanced_project/features/login/ui/screens/login_screen.dart';
import 'package:flutter_advanced_project/features/on_boarding/ui/screens/onboarding_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    // Extract the route name from the settings.
    final String routeName = settings.name!;

    switch (routeName) {
      case Routes.onBoardingScreen:
        // Return a MaterialPageRoute for the OnBoardingScreen route.
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.loginScreen:
        // Return a MaterialPageRoute for the LoginScreen route.
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: LoginScreen(),
          ),
        );
      case Routes.homeScreen:
        // Return a MaterialPageRoute for the OnBoardingScreen route.
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      // default:
      //   // If the requested route is not found, return a MaterialPageRoute for an unknown screen.
      //   return MaterialPageRoute(
      //     builder: (_) => Scaffold(
      //       body: Center(
      //         child: Text('No route defined for ${settings.name}'),
      //       ),
      //     ),
      //   );
    }
    return null;
  }
}

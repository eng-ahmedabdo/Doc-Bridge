import 'package:doc_bridge/core/di/dependency_injection.dart';
import 'package:doc_bridge/core/routing/routes.dart';
import 'package:doc_bridge/features/home/ui/home_screen.dart';
import 'package:doc_bridge/features/login/logic/cubit/login_cubit.dart';
import 'package:doc_bridge/features/login/ui/login_screen.dart';
import 'package:doc_bridge/features/onBoarding/on_boarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    //this arguments to be passedin any screen like this ( arguments: ClassName ).
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => OnBoardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}

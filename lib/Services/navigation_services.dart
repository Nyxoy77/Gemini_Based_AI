
import 'package:ai_bot/Pages/login_page.dart';
import 'package:ai_bot/Pages/homepage.dart';
import 'package:ai_bot/Pages/signup_page.dart';
import 'package:flutter/widgets.dart';

class NavigationService {
  NavigationService() {
    _navigatorKey = GlobalKey<NavigatorState>();
  }
  late GlobalKey<NavigatorState> _navigatorKey;

  final Map<String, Widget Function(BuildContext)> _routes = {
    "/login": (context) => const  LoginPage(),
    "/home" : (context) =>  const HomePage(),
    "/signUp" : (context)=> const SignupPage(),
  };

  GlobalKey<NavigatorState>? get navigatorKey {
    return _navigatorKey;
  }

  Map<String, Widget Function(BuildContext)>? get routes {
    return _routes;
  }

  void pushNamed(String routeName) {
    _navigatorKey.currentState?.pushNamed(routeName);
  }

  void pushReplacementNamed(String routeName) {
    _navigatorKey.currentState?.pushReplacementNamed(routeName);
  }

  void goBack() {
    _navigatorKey.currentState?.pop();
  }
}

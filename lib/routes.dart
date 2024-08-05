import 'package:fb_miner_app/presentetion/page/home_page/home_page.dart';
import 'package:fb_miner_app/presentetion/page/signin_page/signin_page.dart';
import 'package:fb_miner_app/presentetion/page/signup_page/signup_page.dart';
import 'package:fb_miner_app/presentetion/page/splash_screen/splash_screen.dart';
import 'package:flutter/cupertino.dart';

class AppRoutes {
  AppRoutes._();
  static final AppRoutes instance = AppRoutes._();
  String splashscreen = '/';
  String signin_page = 'signin_page';
  String signup_page = 'signup_page';
  String home_page = 'home_page';

  Map<String, WidgetBuilder> allRoutes = {
    '/': (context) => const SplashScreen(),
    'signin_page': (context) => const SigninPage(),
    'signup_page': (context) => const SignupPage(),
    'home_page': (context) => const HomePage(),
  };
}

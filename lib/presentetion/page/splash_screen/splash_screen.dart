import 'dart:async';
import 'package:fb_miner_app/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 3), (tick) {
      Navigator.pushReplacementNamed(
        context,
        AppRoutes.instance.signin_page,
      );
      tick.cancel();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CupertinoActivityIndicator(),
          ],
        ),
        // child: RefreshProgressIndicator(),
      ),
    );
  }
}

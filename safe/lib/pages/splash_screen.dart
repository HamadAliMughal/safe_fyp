import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _showLogo = false;

  @override
  void initState() {
    super.initState();
    // Start the animation after a delay.
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _showLogo = true;
      });

      // Navigate to the welcome screen after the animation.
      Future.delayed(const Duration(seconds: 1), () {
        Navigator.pushReplacementNamed(context, '/welcome');
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFEEE9DA),
      body: Stack(
        children: [
          Positioned(
            top: 1,
            left: -15,
            child: Image.asset(
              'assets/upr_corner.png',
              width: 100,
              height: 100,
            ),
          ),
          Positioned(
            bottom: -1,
            right: -15,
            child: Image.asset(
              'assets/btm_corner.png',
              width: 100,
              height: 100,
            ),
          ),
          Center(
            child: AnimatedOpacity(
              opacity: _showLogo ? 1.0 : 0.0,
              duration: const Duration(seconds: 1),
              child: Image.asset(
                'assets/safe_logo.png',
                width: 250,
                height: 250,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

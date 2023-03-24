import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  late final AnimationController _animationController = AnimationController(vsync: this, duration: const Duration(seconds: 2))..repeat(reverse: true);
  late final CurvedAnimation _curvedAnimation = CurvedAnimation(parent: _animationController, curve: Curves.easeInOut);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FadeTransition(opacity: _curvedAnimation,
            child: Image.asset("assets/images/macbook.png"),
            ),
            Container(child: LinearProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
            ),
            width: MediaQuery.of(context).size.width * 0.2,
            )
          ],
        ),
      ),
    );
  }
}

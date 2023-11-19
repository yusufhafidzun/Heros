import 'package:heros/views/home.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ),
          (route) => false);
    });
    return Scaffold(
      body: Center(
        child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, 
          children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/Heros.png', 
                width: 200,
                height: 200,), 
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(
              'Create By @yusufhafidzn_',
              style: TextStyle(
                  fontWeight: FontWeight.w100, color: Colors.black, fontSize: 14),
            ),
          ),
        ])),
      ),
    );
  }
}

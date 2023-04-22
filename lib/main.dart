import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:hungry_busters/screens/homeScreen/homeScreen.dart';
import 'package:hungry_busters/widgets/root/root.dart';

import 'screens/loginScreen/loginScreen.dart';

void main() => runApp(
  DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MyApp(), // Wrap your app
  ),
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: const Splash(),
    );
  }
}

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Wait for 5 seconds and navigate to the login screen
    Future.delayed(const Duration(seconds: 2), () 
    {
      Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (_) => const Login(),
        )
      );
    }
  );
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage('asset/images/logo.png'),
            fit: BoxFit.cover,
            ),
          ),
        ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/splash_screen.dart';
import 'package:flutter_application_1/providers/button_navigator.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BottomNavigationBarProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Digimaya',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}

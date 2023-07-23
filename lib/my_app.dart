import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/pages/splash_screen.dart';
import 'package:flutter_application_1/providers/blog_post_provider.dart';
import 'package:flutter_application_1/providers/button_navigator.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/injection.dart' as di;


class MyApp extends StatefulWidget { 
  const MyApp({Key? key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
      ChangeNotifierProvider(
          create: (_) => di.locator<BlogPostProvider>(),
        ),
      ChangeNotifierProvider(create: (_) => BottomNavigationBarProvider(),
      ),
    ],
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

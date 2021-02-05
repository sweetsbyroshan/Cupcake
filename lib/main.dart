import 'package:cupcake/pages/bazaar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'pages/document.dart';
import 'pages/profile.dart';
import 'pages/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cupcake',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case 'splash':
            return CupertinoPageRoute(builder: (_) => SplashScreen());
          case 'bazaar':
            return CupertinoPageRoute(builder: (_) => BazaarPage());
          case 'docs':
            return CupertinoPageRoute(builder: (_) => DocumentPage());
          case 'profile':
            return CupertinoPageRoute(builder: (_) => ProfilePage());
          default:
            return MaterialPageRoute(
                builder: (_) => Scaffold(
                      body: SafeArea(
                        child: Center(
                          child: Text('No route exists with ${settings.name}.'),
                        ),
                      ),
                    ));
        }
      },
    );
  }
}

import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      //home: const CardScreen(),
      initialRoute: 'home',
      debugShowCheckedModeBanner: false,
      routes: {
        'listview1': (BuildContext context) => const ListView1Screen(),
        'listview2': (BuildContext context) => const ListView2Screen(),
        'alert': (BuildContext context) => const AlertScreen(),
        'card': (BuildContext context) => const CardScreen(),
        'home': (BuildContext context) => const HomeScreen(),
      },
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (context) => const AlertScreen());
      },
    );
  }
}

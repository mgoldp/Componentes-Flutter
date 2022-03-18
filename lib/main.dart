import 'package:fl_components/router/app_routes.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: AppRoutes.initialRoute,
      debugShowCheckedModeBanner: false,
      routes: AppRoutes.getAppRoutes(),
      onGenerateRoute: AppRoutes.onGeneratedRoute,
      theme: ThemeData.light().copyWith(
        //color primario
        primaryColor: Colors.indigo,

        //AppBar Theme
        appBarTheme: const AppBarTheme(
          color: Colors.indigo,
          elevation: 0,
        ),
      ),
    );
  }
}

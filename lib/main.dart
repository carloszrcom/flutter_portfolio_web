import 'package:flutter/material.dart';
import 'package:flutter_portfolio_web/pages/portfolio_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mi web de presentación',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PortfolioPage(),
    );
  }
}

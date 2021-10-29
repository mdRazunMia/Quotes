import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './provider/quote_provider.dart';
import './screens/add_quote_screen.dart';
import './screens/home_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => Quotelist(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quote App',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const HomeScreen(),
      routes: {
        '/addQuoteScreen': (context) => const AddQuoteScreen(),
      },
    );
  }
}

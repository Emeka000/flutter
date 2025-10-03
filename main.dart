import 'package:flutter/material.dart';
import 'package:my_app/views/widgets_tree.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness:isDarkMode ? Brightness.dark: Brightness.light,
        ),
      ),
      home: WidgetsTree(),
    );
  }
}

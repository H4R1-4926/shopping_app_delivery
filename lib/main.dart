import 'package:flutter/material.dart';
import 'package:shopping_app_delivery/Core/colors.dart';

import 'Presentation/Screens/Home/hompage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(scaffoldBackgroundColor: kwhite),
        debugShowCheckedModeBanner: false,
        home: const HomePage());
  }
}

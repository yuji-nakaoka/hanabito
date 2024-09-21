import 'package:flutter/material.dart';
import 'package:hanabito/presentation/foundations/app_text.dart';
import 'package:hanabito/presentation/foundations/material.dart';
import 'package:hanabito/presentation/screens/home/home_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    const themeColor = Color(0xFF8A2321);
    return MaterialApp(
      title: AppText.hanabito,
      theme: ThemeData(
        colorSchemeSeed: themeColor,
        scaffoldBackgroundColor: Colors.black,
        useMaterial3: true,
        fontFamily: 'Sawarabi_Gothic',
        brightness: Brightness.light,
        appBarTheme: AppBarTheme(
          backgroundColor: themeColor,
          centerTitle: true,
          toolbarHeight: 80,
          titleTextStyle: context.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: context.onPrimary,
          ),
        ),
      ),
      darkTheme: ThemeData.dark(),
      home: const HomeScreen(),
    );
  }
}

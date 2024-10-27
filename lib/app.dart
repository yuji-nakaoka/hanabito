import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hanabito/presentation/foundations/app_text.dart';
import 'package:hanabito/presentation/foundations/material.dart';
import 'package:hanabito/utils/router/common_router.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// テーマカラー
    const themeColor = Color(0xFF8A2321);

    /// ルーター
    final goRouter = ref.watch(commonRouterProvider);
    return MaterialApp.router(
      title: AppText.hanabito,
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      routerConfig: goRouter,
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
          iconTheme: IconThemeData(color: context.onPrimary),
        ),
      ),
    );
  }
}

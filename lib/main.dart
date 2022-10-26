import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:theme_riverpod/screen/home_screen.dart';
import 'package:theme_riverpod/provider/theme_provider.dart';
import 'package:theme_riverpod/style/styles.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final themeNotifer = ref.watch(themeProvider);
      Styles styles = Styles();

      return MaterialApp(
        title: 'Flutter Demo',
        debugShowMaterialGrid: false,
        theme: styles.themeData(themeNotifer.themeIndex, context),
        home: HomeScreen(),
      );
    });
  }
}

import 'package:flower_boutique/feature/catalog/ui/tab_bar_screen.dart';

import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TabBarScreen(),
      
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        colorScheme: ColorScheme.light(background: Colors.grey.shade200),
        appBarTheme: AppBarTheme(backgroundColor: Colors.grey.shade200),
        
      ),
    );
  }
}

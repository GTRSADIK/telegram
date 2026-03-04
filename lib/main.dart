import 'package:flutter/material.dart';
import 'core/theme/telegram_theme.dart';
import 'layout/main_scaffold.dart';

void main() {
  runApp(const TelegramApp());
}

class TelegramApp extends StatelessWidget {
  const TelegramApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: telegramDarkTheme,
      home: const MainScaffold(),
    );
  }
}

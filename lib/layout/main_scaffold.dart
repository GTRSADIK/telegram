import 'package:flutter/material.dart';
import '../features/chats/chat_list_screen.dart';
import '../features/calls/calls_screen.dart';
import '../features/stories/stories_row.dart';
import '../features/settings/settings_screen.dart';
import '../widgets/bottom_nav.dart';
import '../widgets/drawer_panel.dart';

class MainScaffold extends StatefulWidget {
  const MainScaffold({super.key});

  @override
  State<MainScaffold> createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> {
  int index = 0;

  final pages = const [
    ChatListScreen(),
    CallsScreen(),
    StoriesScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerPanel(),
      body: pages[index],
      bottomNavigationBar: BottomNav(
        selectedIndex: index,
        onTap: (i) => setState(() => index = i),
      ),
    );
  }
}

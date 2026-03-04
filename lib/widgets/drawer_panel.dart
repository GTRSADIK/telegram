import 'package:flutter/material.dart';

class DrawerPanel extends StatelessWidget {
  const DrawerPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF17212B),
      child: ListView(
        children: const [
          DrawerHeader(child: Text("Telegram 2026")),
          ListTile(title: Text("New Group")),
          ListTile(title: Text("Contacts")),
          ListTile(title: Text("Saved Messages")),
        ],
      ),
    );
  }
}

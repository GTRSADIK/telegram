import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTap;

  const BottomNav({
    super.key,
    required this.selectedIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: selectedIndex,
      onDestinationSelected: onTap,
      destinations: const [
        NavigationDestination(icon: Icon(Icons.chat), label: "Chats"),
        NavigationDestination(icon: Icon(Icons.call), label: "Calls"),
        NavigationDestination(icon: Icon(Icons.circle), label: "Stories"),
        NavigationDestination(icon: Icon(Icons.settings), label: "Settings"),
      ],
    );
  }
}

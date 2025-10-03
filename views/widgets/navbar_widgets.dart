import 'package:flutter/material.dart';
import 'package:my_app/data/notifier.dart';

class NavbarWidgets extends StatelessWidget {
  const NavbarWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedPageNotifier,
      builder: (context, selectedPage, child) {
        return NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.person), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            // NavigationDestination(icon: Icon(Icons.person), label: 'profile'),
          ],
          onDestinationSelected: (int value) {
            selectedPageNotifier.value;
          },
          selectedIndex: selectedPage,
        );
      },
    );
  }
}

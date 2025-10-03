import 'package:flutter/material.dart';
import 'package:my_app/data/notifier.dart';
import 'package:my_app/views/pages/home_page.dart';
import 'package:my_app/views/pages/profile_page.dart';

import 'widgets/navbar_widgets.dart';

List<Widget> pages = [HomePage(), ProfilePage()];

class WidgetsTree extends StatelessWidget {
  const WidgetsTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Widgets Tree'), centerTitle: true),
      body: Center(child: Text('This is the Widgets Tree')),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Mapp'),
        actions: [
          IconButton(
            onPressed: () {
              isDarkModeNotifier.value = !isDarkModeNotifier.value;
            },
            icon: ValueListenableBuilder(
              valueListenable: isDarkModeNotifier,
              builder: (context, isDarkMode, child) {
                return Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode);
              },
            ),
          ),
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, selectedPage, child) {
          return pages.elementAt(selectedPage);
        },
      ),
      bottomNavigationBar: NavbarWidgets(),
    );
  }
}

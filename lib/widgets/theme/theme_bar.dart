import 'package:flutter/material.dart';

import '../../my_app.dart';

class ThemeBar extends StatefulWidget {
  const ThemeBar({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ThemeBer();
  }
}

class _ThemeBer extends State<ThemeBar> {
  // ThemeMode _themeMode = ThemeMode.light;
  //
  // void toggleThemeMode(double value) {
  //   setState(() {
  //     if (value == 0.0) {
  //       _themeMode = ThemeMode.light;
  //     } else {
  //       _themeMode = ThemeMode.dark;
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 48, 16, 16),
      child: Column(
        children: [
          const Text(
            'Is Dark Theme enabled:',
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
              onPressed: () => MyApp.of(context, ThemeMode.light),
              child: const Text('Light')),
          ElevatedButton(
              onPressed: () => MyApp.of(context, ThemeMode.dark),
              child: const Text('Dark')),
        ],
      ),
    );
  }
}

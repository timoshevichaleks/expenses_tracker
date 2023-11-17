import 'package:expense_tracker/extensions/build_context_extension.dart';
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
  bool _darkTheme = false;

  final MaterialStateProperty<Icon?> thumbIcon =
      MaterialStateProperty.resolveWith<Icon?>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return const Icon(Icons.check);
      }
      return const Icon(Icons.close);
    },
  );

  @override
  Widget build(BuildContext context) {
    _darkTheme = context.isDarkMode;
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 48, 16, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_outlined),
              ),
              const Text(
                'Settings',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 20),
          SwitchListTile(
            thumbIcon: thumbIcon,
            title: Text(
              'Dark Mode',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            value: _darkTheme,
            onChanged: (bool value) {
              setState(() {
                _darkTheme = value;
              });
              MyApp.of(context,
                  _darkTheme == false ? ThemeMode.light : ThemeMode.dark);
            },
          ),
        ],
      ),
    );
  }
}

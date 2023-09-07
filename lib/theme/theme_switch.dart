import 'package:flutter/material.dart';
import 'package:practice_learning_app/theme/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class ThemeSwitch extends StatefulWidget {


   const ThemeSwitch({Key? key}) : super(key: key);

  @override
  State<ThemeSwitch> createState() => _ThemeSwitchState();
}

class _ThemeSwitchState extends State<ThemeSwitch> {
  bool themeValue = true;

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ThemeProvider>(context);
    return Switch.adaptive(
      activeColor: Colors.blueAccent,
      activeTrackColor: Colors.blue.withOpacity(0.4),
      value: themeValue,
      onChanged: (value) {
        provider.toggleTheme();
        setState(() {
          themeValue = value;
        });
      },

      //onChanged: (value) => setState(() => themeValue = value),
    );
  }
}

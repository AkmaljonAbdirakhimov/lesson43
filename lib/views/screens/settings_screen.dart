import 'package:flutter/material.dart';
import 'package:lesson43/utils/app_constants.dart';
import 'package:lesson43/views/widgets/custom_drawer.dart';

class SettingsScreen extends StatefulWidget {
  final ValueChanged<bool> onThemeChanged;
  const SettingsScreen({
    super.key,
    required this.onThemeChanged,
  });

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sozlamalar"),
      ),
      drawer: CustomDrawer(onThemeChanged: widget.onThemeChanged),
      body: ListView(
        children: [
          SwitchListTile(
            value: AppConstants.themeMode == ThemeMode.dark,
            onChanged: widget.onThemeChanged,
            title: const Text("Tungi holat"),
          ),
        ],
      ),
    );
  }
}

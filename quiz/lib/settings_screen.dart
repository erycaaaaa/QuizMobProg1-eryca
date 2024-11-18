import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme_provider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings Screen'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            const Center(
              child: Text(
                'Select Your Theme ^^',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),

            // Bagian Tema
            const Text(
              'Theme',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: 10, // Jarak horizontal antar tombol
              runSpacing: 10, // Jarak vertikal antar tombol
              children: List.generate(themes.length, (index) {
                return ElevatedButton(
                  onPressed: () => themeProvider.setTheme(index),
                  child: Text('Theme ${index + 1}'),
                );
              }),
            ),
            const SizedBox(height: 10),

            // Bagian Font
            const Text(
              'Font',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: List.generate(fonts.length, (index) {
                return ElevatedButton(
                  onPressed: () => themeProvider.setFont(index),
                  child: Text(fonts[index]),
                );
              }),
            ),
          ],
        ),
      ),
      
    );
  }
}

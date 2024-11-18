import 'package:flutter/material.dart';
import 'settings_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.blue, 
              Colors.purple, 
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
      
              const CircleAvatar(
                radius: 40,
                backgroundColor: Colors.white, 
                child: Icon(
                  Icons.star, 
                  size: 40, 
                  color: Colors.blue, 
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'welkam to theme app',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white, 
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SettingsScreen()),
                  );
                },
                child: const Text('Go to Theme'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

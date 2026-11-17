import 'package:flutter/material.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Me'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const CircleAvatar(
            radius: 45,
            backgroundColor: Colors.blue,
            child: Icon(Icons.person, size: 55, color: Colors.white),
          ),

          const SizedBox(height: 15),

          const Center(
            child: Text(
              'Angger Santiko',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

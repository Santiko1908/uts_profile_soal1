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

          const SizedBox(height: 25),

          // Bagian Skills
          const Text(
            'Skills',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 10),

          const ListTile(
            leading: Icon(Icons.code, color: Colors.blue),
            title: Text('Flutter Development'),
          ),

          const ListTile(
            leading: Icon(Icons.computer, color: Colors.blue),
            title: Text('Web Development'),
          ),

          const ListTile(
            leading: Icon(Icons.design_services, color: Colors.blue),
            title: Text('UI/UX Design'),
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

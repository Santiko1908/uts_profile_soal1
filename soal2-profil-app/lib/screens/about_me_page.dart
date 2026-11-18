import 'package:flutter/material.dart';

import '../models/profile.dart';

class AboutMePage extends StatelessWidget {
  final Profile profile;

  const AboutMePage({super.key, required this.profile});

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
          CircleAvatar(
            radius: 45,
            backgroundColor: Colors.blue,
            backgroundImage: profile.photoBytes != null
                ? MemoryImage(profile.photoBytes!)
                : null,
            child: profile.photoBytes == null
                ? const Icon(Icons.person, size: 55, color: Colors.white)
                : null,
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

          const Text(
            'Hobi dan Minat',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 10),

          const ListTile(
            leading: Icon(Icons.laptop, color: Colors.blue),
            title: Text('Belajar Teknologi'),
          ),

          const ListTile(
            leading: Icon(Icons.trending_up, color: Colors.blue),
            title: Text('Investasi dan Market Global'),
          ),

          const ListTile(
            leading: Icon(Icons.menu_book, color: Colors.blue),
            title: Text('Belajar Hal Baru'),
          ),

          const SizedBox(height: 20),

          // Bagian Pendidikan
          const Text(
            'Riwayat Pendidikan',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 10),

          const ListTile(
            leading: Icon(Icons.school, color: Colors.blue),
            title: Text('Teknik Informatika'),
            subtitle: Text('Pendidikan saat ini'),
          ),
        ],
      ),
    );
  }
}

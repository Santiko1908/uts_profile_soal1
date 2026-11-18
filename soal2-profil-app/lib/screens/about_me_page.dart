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
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          // HEADER PERKENALAN
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white,
                  backgroundImage: profile.photoBytes != null
                      ? MemoryImage(profile.photoBytes!)
                      : null,
                  child: profile.photoBytes == null
                      ? const Icon(Icons.person, size: 60, color: Colors.blue)
                      : null,
                ),

                const SizedBox(height: 15),

                Text(
                  'Hello, I\'m ${profile.name}!',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                const SizedBox(height: 8),

                Text(
                  profile.studyProgram,
                  style: const TextStyle(color: Colors.white70, fontSize: 15),
                ),

                const SizedBox(height: 10),

                const Text(
                  'Technology Enthusiast',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 25),

          // TENTANG SAYA
          const Text(
            'Tentang Saya',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 10),

          Card(
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                '${profile.bio}. '
                'Saya senang mempelajari hal baru, '
                'mengembangkan kemampuan teknologi, '
                'serta mengikuti perkembangan ekonomi '
                'dan market global.',
                style: const TextStyle(fontSize: 15, height: 1.6),
              ),
            ),
          ),

          const SizedBox(height: 25),

          // SKILLS
          const Text(
            'My Skills',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 10),

          _buildSkill('Flutter Development', Icons.phone_android, 0.70),

          _buildSkill('Web Development', Icons.web, 0.65),

          _buildSkill('UI/UX Design', Icons.design_services, 0.55),

          const SizedBox(height: 25),

          // HOBI DAN MINAT
          const Text(
            'Hobi dan Minat',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 10),

          Card(
            elevation: 2,
            child: Column(
              children: const [
                ListTile(
                  leading: Icon(Icons.laptop, color: Colors.blue),
                  title: Text('Belajar Teknologi'),
                  subtitle: Text('Mempelajari perkembangan teknologi'),
                ),

                Divider(height: 1),

                ListTile(
                  leading: Icon(Icons.trending_up, color: Colors.blue),
                  title: Text('Investasi dan Market Global'),
                  subtitle: Text('Mengikuti perkembangan pasar global'),
                ),

                Divider(height: 1),

                ListTile(
                  leading: Icon(Icons.menu_book, color: Colors.blue),
                  title: Text('Belajar Hal Baru'),
                  subtitle: Text('Mengembangkan pengetahuan dan kemampuan'),
                ),
              ],
            ),
          ),

          const SizedBox(height: 25),

          // PENDIDIKAN
          const Text(
            'Riwayat Pendidikan',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 10),

          Card(
            elevation: 2,
            child: ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.blue,
                child: Icon(Icons.school, color: Colors.white),
              ),
              title: const Text(
                'Teknik Informatika',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text('Pendidikan saat ini'),
            ),
          ),

          const SizedBox(height: 25),

          // FOOTER
          const Center(
            child: Text(
              'Thank You for Visiting My Profile!',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 13,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),

          const SizedBox(height: 15),
        ],
      ),
    );
  }

  // WIDGET SKILLS
  Widget _buildSkill(String skillName, IconData icon, double progress) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 10),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              children: [
                Icon(icon, color: Colors.blue),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    skillName,
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
                Text('${(progress * 100).toInt()}%'),
              ],
            ),

            const SizedBox(height: 12),

            LinearProgressIndicator(
              value: progress,
              backgroundColor: Colors.grey.shade300,
              color: Colors.blue,
              minHeight: 7,
              borderRadius: BorderRadius.circular(10),
            ),
          ],
        ),
      ),
    );
  }
}

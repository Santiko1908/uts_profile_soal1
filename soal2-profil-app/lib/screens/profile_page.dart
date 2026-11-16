import 'package:flutter/material.dart';

import '../models/profile.dart';
import 'edit_profil_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late Profile profile;

  @override
  void initState() {
    super.initState();

    profile = const Profile(
      name: 'Angger Santiko',
      nim: '1124160099',
      studyProgram: 'Teknik Informatika',
      studentClass: 'TISE24 Malam',
      bio:
          'Mahasiswa yang tertarik pada teknologi, investasi dan market global',
      email: 'anggersantikogaul@gmail.com',
      phone: '082314946902',
      github: 'Santiko1908',
    );
  }

  Future<void> _editProfile() async {
    final updatedProfile = await Navigator.push<Profile>(
      context,
      MaterialPageRoute(
        builder: (context) => EditProfilePage(profile: profile),
      ),
    );

    if (updatedProfile != null) {
      setState(() {
        profile = updatedProfile;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Saya'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 55,
              backgroundColor: Colors.blue,
              child: Icon(Icons.person, size: 65, color: Colors.white),
            ),
            const SizedBox(height: 16),
            Text(
              profile.name,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 6),
            Text(
              profile.studyProgram,
              style: const TextStyle(color: Colors.grey, fontSize: 15),
            ),
            const SizedBox(height: 20),
            Text(profile.bio, textAlign: TextAlign.center),
            const SizedBox(height: 25),
            Card(
              elevation: 2,
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(
                      Icons.badge_outlined,
                      color: Colors.blue,
                    ),
                    title: const Text('NIM'),
                    subtitle: Text(profile.nim),
                  ),
                  const Divider(height: 1),
                  ListTile(
                    leading: const Icon(
                      Icons.school_outlined,
                      color: Colors.blue,
                    ),
                    title: const Text('Kelas'),
                    subtitle: Text(profile.studentClass),
                  ),
                  const SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Informasi Kontak',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),
                  Card(
                    elevation: 2,
                    child: Column(
                      children: [
                        ListTile(
                          leading: const Icon(
                            Icons.email_outlined,
                            color: Colors.blue,
                          ),
                          title: const Text('Email'),
                          subtitle: Text(profile.email),
                        ),
                        const Divider(height: 1),
                        ListTile(
                          leading: const Icon(
                            Icons.phone_outlined,
                            color: Colors.blue,
                          ),
                          title: const Text('Nomor Telepon'),
                          subtitle: Text(profile.phone),
                        ),
                        const Divider(height: 1),
                        ListTile(
                          leading: const Icon(Icons.code, color: Colors.blue),
                          title: const Text('GitHub'),
                          subtitle: Text(profile.github),
                        ),
                        const SizedBox(height: 15),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: ElevatedButton.icon(
                              onPressed: _editProfile,
                              icon: const Icon(Icons.edit),
                              label: const Text('Edit Profil'),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../models/profile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  final Profile profile = const Profile(
    name: 'Angger Santiko',
    nim: '1124160099',
    studyProgram: 'Teknik Informatika',
    studentClass: 'TISE24 Malam',
    bio: 'Mahasiswa yang tertarik pada teknologi, investasi dan market global',
    email: 'anggersantikogaul@gmail.com',
    phone: '082314946902',
    github: 'Santiko1908',

},

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Saya'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

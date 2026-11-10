import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profil Angger Santiko',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      )

      darkTheme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        brightness: Brightness.dark,
      )

      themeMode: ThemeMode.system,
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
    const ProfilePage({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Profil Mahasiswa'),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.mort_vert),
              onPressed: () {},
            ),
          ],
        ),

        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 55,
                    backgroundImage: Colors.blue,
                    child: Text(
                      'Angger SAntiko',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ),

                    const SizedBox(height: 20),

                    Text(
                      'Angger Santiko',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    text align: TextAlign.center,
                  ),

                  const SizedBox(height: 10),

                  Text(
                    'NIM: 1124160099',  
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),

                  const: SizedBox(height: 5),

                  Text(
                    'Program Studi Sistem Informasi';
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),

                  const SizedBox(height:25),

                  Card(
                    elevation: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Informasi Kontak',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),

                        const SizedBox(height: 10),

                        const InfoTile(
                          icon: Icons.email,
                          label: 'Email',
                          value: 'anggersesss@email.com',
                        ),

                        const InfoTile(
                          icon: Icons.phone,
                          label: 'Nomor HP',
                          value: '082314946902',
                        ),

                        const InfoTile(
                          icon: Icons.school,
                          label: 'Kelas',
                          value: 'Sistem Informasi',
                        ),

                        const InfoTile(
                          icon: Icons.code,
                          label: 'GitHub',
                          value: 'github.com/Santiko1908',
                        ),
                      )
                    )
                  ),

                  const SizedBox(height: 20),

                   Card(
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Keahlian dan Hobi',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),

                        const SizedBox(height: 10),

                        const InfoTile(
                          icon: Icons.computer,
                          label: 'Keahlian',
                          value: 'Pemrograman dan Pengembangan Web',
                        ),

                        const InfoTile(
                          icon: Icons.phone_android,
                          label: 'Mobile Development',
                          value: 'Flutter dan Dart',
                        ),

                        const InfoTile(
                          icon: Icons.sports_soccer,
                          label: 'Hobi',
                          value: 'Olahraga dan Belajar Teknologi',
                ],
              ),
            ),
          )
        )
      );
    }
  }


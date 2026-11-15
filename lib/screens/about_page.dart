import "package:flutter/material.dart";

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang saya'),
        centerTitle: true,
      ),
      
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const CircleAvatar(
            radius: 55,
            backgroundColor: Colors.lightBlueAccent,
            child: Icon(
              Icons.person,
              size: 55,
              color: Colors.white,
            ),
          ),

          const SizedBox(height: 15),

          const Text(
            'Rival Hermawan',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 25),

          const Text(
            'Hobi dan Minat',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),

          Card(
            child: Column(
              children: const [
                ListTile(
                  leading: Icon(Icons.sports_esports),
                  title: Text('Bermain Game'),
                  subtitle: Text('Hobi'),
                ),

                ListTile(
                  leading: Icon(Icons.code),
                  title: Text('Belajar Pemrograman'),
                  subtitle: Text('Minat'),
                ),

                ListTile(
                  leading: Icon(Icons.sports_tennis),
                  title: Text('Badminton'),
                  subtitle: Text('Hobi'),
                ),
              ],
            ),
          ),

          const SizedBox(height: 25),

          const Text(
            'Riwayat Pendidikan',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),

          Card(
            child: Column(
              children: const [
                ListTile(
                  leading: Icon(Icons.school),
                  title: Text('SMKN 2 Kab. Tangerang'),
                  subtitle: Text('Teknik Komputer & Jaringan'),
                ),

                ListTile(
                  leading: Icon(Icons.school),
                  title: Text('Global Institute'),
                  subtitle: Text('Software Engineering'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
      
}
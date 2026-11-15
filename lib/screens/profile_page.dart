import "package:flutter/material.dart";
import "../models/profile.dart";

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState()=> _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  final Profile profile = Profile(
    nama  : 'Rival Hermawan',
    nim   : '1124160127',
    prodi : 'Software Engineering',
    kelas : 'TI 24 SE M',
    bio   : 'Mahasiswa Software Engineering yang tertarik dengan dunia pemrograman',
    email : 'rivalhermawan47@gmail.com',
    phone : '085773810843',
    github: 'https://github.com/Paulothejungle',
    lokasi: 'Tangerang',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Saya'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(height: 20),

                // Avatar profile
                CircleAvatar(
                  radius: 55,
                  backgroundColor: Colors.lightBlueAccent,
                  child: Icon(
                    Icons.person,
                    size: 60,
                    color: Colors.white,
                  ),
                ),

                SizedBox(height: 8),

                // My full name
                Text(
                  profile.nama,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ), 
                ),

                SizedBox(height: 8),

                // Student identity 
                Text('NIM: ${profile.nim}'),
                Text(profile.prodi),
                Text('Kelas: ${profile.kelas}'),

                SizedBox(height: 12),

                // Bio
                Text(
                  profile.bio,
                  textAlign: TextAlign.center,
                ),

                SizedBox(height: 20),

                Card(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.email),
                        title: Text('Email'),
                        subtitle: Text(profile.email),
                      ),

                      ListTile(
                        leading: Icon(Icons.phone),
                        title: Text('Phone'),
                        subtitle: Text(profile.phone),
                      ),

                      ListTile(
                        leading: Icon(Icons.code),
                        title: Text('Github'),
                        subtitle: Text(profile.github),
                      ),

                      ListTile(
                        leading: Icon(Icons.location_on),
                        title: Text('Location'),
                        subtitle: Text(profile.lokasi),
                      ),
                    ]
                  )
                ) 
              ],
            )
        ),
      )
    );
  }
}

import "package:flutter/material.dart";
import "../models/profile.dart";

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState()=> _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Saya'),
        centerTitle: true,
      ),
      body: const SingleChildScrollView(
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
                  'Rival Hermawan',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ), 
                ),

                SizedBox(height: 8),

                // Student identity 
                Text('NIM: 1124160127'),
                Text('Software Engineering'),
                Text('Kelas: TI 24 SE M'),

                SizedBox(height: 12),

                // Bio
                Text(
                  'Mahasiswa Software Engineering yang tertarik dengan dunia pemrograman',
                  textAlign: TextAlign.center,
                ),

                SizedBox(height: 20),

                Card(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.email),
                        title: Text('Email'),
                        subtitle: Text('rivalhermawan47@gmail.com'),
                      ),

                      ListTile(
                        leading: Icon(Icons.phone),
                        title: Text('Phone'),
                        subtitle: Text('085773810843'),
                      ),

                      ListTile(
                        leading: Icon(Icons.code),
                        title: Text('Github'),
                        subtitle: Text('https://github.com/Paulothejungle'),
                      ),

                      ListTile(
                        leading: Icon(Icons.location_on),
                        title: Text('Locatioon'),
                        subtitle: Text('Tangerang'),
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

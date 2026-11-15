import "package:flutter/material.dart";
import "../models/profile.dart";
import "edit_profile_page.dart";
import "about_page.dart";

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState()=> _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  late Profile profile;
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState((){
      _selectedIndex = index;
    });
  }

  @override
    void initState() {
      super.initState();

      profile = Profile(
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
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_selectedIndex == 0 ? 'profil saya' : 'Tentang saya',),
        centerTitle: true,
        actions: [
          if (_selectedIndex == 0)
            IconButton(
              icon: const Icon(Icons.edit),
              onPressed: () async {
                final dataBaru = await Navigator.push<Profile>(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditProfilePage(
                      profile: profile,
                      ),
                  ),
                );
                if (dataBaru != null) {
                  setState((){
                    profile = dataBaru;  
                  });
                }
              },
            )
        ],
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          _buildProfileContent(),
          const AboutPage(),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const[
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Tentang', 
          ),
        ],
      ),
    );
  }
}

Widget _buildProfileContent() {
  return SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.all(20),
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
      ),
    ),
  );
}
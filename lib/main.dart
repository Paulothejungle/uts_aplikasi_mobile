
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rival Hermawan',
      theme: ThemeData(
        colorSchemeSeed: Colors.blueAccent,
      ),
      home: const MyInfoRow(),
    );
  }
}

class MyInfoRow extends StatelessWidget {
  const MyInfoRow({super.key});

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
                )
              ],
            )
        ),
      )
    );
  }
}

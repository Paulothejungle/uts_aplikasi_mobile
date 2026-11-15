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
        ],

        
      ),
    );
  }
      
}
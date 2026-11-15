import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "../models/profile.dart";

class EditProfilePage extends StatefulWidget {
  final Profile profile;

  const EditProfilePage({
    super.key,
    required this.profile,
  });

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController namaController;
  late TextEditingController nimController;
  late TextEditingController prodiController;
  late TextEditingController kelasController;
  late TextEditingController bioController;
  late TextEditingController emailController;
  late TextEditingController phoneController;
  late TextEditingController githubController;
  late TextEditingController lokasiController;

  @override 
  void initState() {
    super.initState();

    namaController = TextEditingController(text: widget.profile.nama);
    nimController = TextEditingController(text: widget.profile.nim);
    prodiController = TextEditingController(text: widget.profile.prodi);
    kelasController = TextEditingController(text: widget.profile.kelas);
    bioController = TextEditingController(text: widget.profile.bio);
    emailController = TextEditingController(text: widget.profile.email);
    phoneController = TextEditingController(text: widget.profile.phone);
    githubController = TextEditingController(text: widget.profile.github);
    lokasiController = TextEditingController(text: widget.profile.lokasi);
  }

  @override
  void dispose() {
    namaController.dispose();
    nimController.dispose();
    prodiController.dispose();
    kelasController.dispose();
    bioController.dispose();
    emailController.dispose();
    phoneController.dispose();
    githubController.dispose();
    lokasiController.dispose();

    super.dispose();
  }

  void simpanProfil() {
    if (_formKey.currentState!.validate()) {
      final dataBaru = Profile(
        nama: namaController.text,
        nim: nimController.text,
        prodi: prodiController.text,
        kelas: kelasController.text,
        bio: bioController.text,
        email: emailController.text,
        phone: phoneController.text,
        github: githubController.text,
        lokasi: lokasiController.text,
      );

      Navigator.pop(context, dataBaru);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children:[
              // full name
              TextFormField(
                controller: namaController,
                decoration: const InputDecoration(
                  labelText: 'Nama Lengkap',
                  border: OutlineInputBorder(),
                ),
                validator: (value){
                  if (value == null || value.trim().isEmpty) {
                    return 'Nama Wajib Diisi';
                  }
                  return null;
                },
              ),

              const SizedBox(height: 15),

              // NIM  
              TextFormField(
                controller: nimController,
                decoration: const InputDecoration(
                  labelText: 'NIM',
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 15),

              // Prodi  
              TextFormField(
                controller: prodiController,
                decoration: const InputDecoration(
                  labelText: 'Program Studi',
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 15),

              // Kelas  
              TextFormField(
                controller: kelasController,
                decoration: const InputDecoration(
                  labelText: 'Kelas',
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 15),

              // Bio
              TextFormField(
                controller: bioController,
                decoration: const InputDecoration(
                  labelText: 'Bio',
                  border: OutlineInputBorder(),
                ),
                maxLines: 3,
              ),

              const SizedBox(height: 15),

              // Email
              TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || 
                  !RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$')
                  .hasMatch(value.trim())) {
                    return 'Email tidak valid';
                  }
                  return null;
                },
              ),

              const SizedBox(height: 15),
              
              // Phone
              TextFormField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  labelText: 'Nomor HP',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null ||
                      !RegExp(r'^[0-9]{10,13}$')
                          .hasMatch(value.trim())) {
                    return 'Nomor HP harus 10-13 digit angka';
                  }
                  return null;
                },
              ),

              const SizedBox(height: 15),

              // Github  
              TextFormField(
                controller: githubController,
                decoration: const InputDecoration(
                  labelText: 'Github',
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 15),

              // Lokasi
              TextFormField(
                controller: lokasiController,
                decoration: const InputDecoration(
                  labelText: 'Lokasi',
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 15),

              
            ]
          )
        )
      )
    );
  }

}
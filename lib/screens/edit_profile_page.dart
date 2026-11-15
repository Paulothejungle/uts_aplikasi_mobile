import "package:flutter/material.dart";
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
}
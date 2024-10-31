import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:myapp/app/controllers/auth_controller.dart';

import '../controllers/reset_password_controller.dart';

class ResetPasswordView extends GetView<ResetPasswordController> {
  final cAuth = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RESET PASSWORD'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Vertikal tengah
            crossAxisAlignment: CrossAxisAlignment.center, // Horizontal tengah
            children: [
              // TextField untuk nama lengkap
              // TextField(
              //   textAlign: TextAlign.center, // Memusatkan teks di dalam field
              //   decoration: InputDecoration(
              //     hintText: "Nama Lengkap",
              //     labelText: "Nama Lengkap",
              //     border: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(10),
              //     ),
              //   ),
              // ),
              // const SizedBox(height: 16),
              TextField(
                controller: controller.cEmail,
                textAlign: TextAlign.center, // Memusatkan teks di dalam field
                decoration: InputDecoration(
                  hintText: "Email",
                  labelText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 16), // Jarak antara TextField
              // TextField untuk password

              // const SizedBox(height: 16),
              // TextField(
              //   textAlign: TextAlign.center, // Memusatkan teks di dalam field
              //   obscureText: true,
              //   decoration: InputDecoration(
              //     hintText: "Masukan Ulang Password",
              //     labelText: "Password",
              //     border: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(10),
              //     ),
              //   ),
              // ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  cAuth.resetPassword(controller.cEmail.text);
                },
                child: const Text('Reset password'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

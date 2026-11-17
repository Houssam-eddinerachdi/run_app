import 'package:flutter/material.dart';

class Inscription extends StatefulWidget {
  const Inscription({super.key});

  @override
  State<Inscription> createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Inscription")),
      body: Column(
        children: [
          TextFormField(
            controller: emailController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Email',
              hintText: 'Saisir votre email',
            ),
          ),

          const SizedBox(height: 20),

          TextFormField(
            controller: passwordController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password',
            ),
            obscureText: true,
          ),

          ElevatedButton(
            onPressed: () {
              emailController.clear();
              passwordController.clear();

              FocusScope.of(context).unfocus();

              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Vous êtes inscrit avec succès !"),
                  backgroundColor: Colors.green,
                  duration: Duration(seconds: 4),
                ),
              );
            },
            child: const Text("Inscription"),
          ),
        ],
      ),
    );
  }
}

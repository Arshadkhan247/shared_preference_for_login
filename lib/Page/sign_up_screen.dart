import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_preference_for_login/Page/home_page.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(
                hintText: 'Email',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: passController,
              decoration: const InputDecoration(
                hintText: 'Password',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: ageController,
              decoration: const InputDecoration(
                hintText: 'Age',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () async {
                SharedPreferences sp = await SharedPreferences.getInstance();

                sp.setString('email', emailController.text.toString());
                sp.setString('password', passController.text.toString());
                sp.setString('age', ageController.text.toString());

                print(sp.getString('email'));
                print(sp.getString('password'));
                print(sp.getString('age'));

                await Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
              child: const Text('Sign UP'),
            ),
          ],
        ),
      ),
    );
  }
}

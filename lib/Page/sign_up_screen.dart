import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_preference_for_login/Types/admin_screen.dart';
import 'package:shared_preference_for_login/Types/teacher_screen.dart';
import 'package:shared_preference_for_login/Types/student_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController userTypeController = TextEditingController();

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
              keyboardType: TextInputType.text,
              controller: nameController,
              decoration: const InputDecoration(
                hintText: 'Name',
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              controller: emailController,
              decoration: const InputDecoration(
                hintText: 'Email',
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              keyboardType: TextInputType.visiblePassword,
              controller: passController,
              decoration: const InputDecoration(
                hintText: 'Password',
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              controller: ageController,
              decoration: const InputDecoration(
                hintText: 'Age',
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              controller: userTypeController,
              decoration: const InputDecoration(
                hintText: 'UserType',
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () async {
                SharedPreferences sp = await SharedPreferences.getInstance();

                sp.setString('name', nameController.text.toString());

                sp.setString('email', emailController.text.toString());
                sp.setString('password', passController.text.toString());
                sp.setString('age', ageController.text.toString());
                sp.setBool('isLogin', true);
                sp.setString('userType', userTypeController.text.toString());

                bool isLogin = sp.getBool('isLogin') ?? false;
                String userType = sp.getString('userType') ?? '';

                if (isLogin) {
                  if (userType == 'student' || userType == 'STUDENT') {
                    Timer(const Duration(milliseconds: 100), () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const StudentScreen()));
                    });
                  } else if (userType == 'teacher' || userType == 'TEACHER') {
                    Timer(const Duration(milliseconds: 100), () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const TeacherScreen(),
                        ),
                      );
                    });
                  } else if (userType == 'admin' || userType == 'ADMIN') {
                    Timer(const Duration(milliseconds: 100), () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AdminScreen()));
                    });
                  }
                } else {
                  Timer(const Duration(seconds: 100), () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUpScreen(),
                      ),
                    );
                  });
                }
                // ignore: use_build_context_synchronously
              },
              child: const Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StudentScreen extends StatefulWidget {
  const StudentScreen({super.key});

  @override
  State<StudentScreen> createState() => _StudentScreenState();
}

class _StudentScreenState extends State<StudentScreen> {
  String name = '';
  String email = '';
  String password = '';
  String age = '';
  String userType = '';

  @override
  void initState() {
    loadData();
    super.initState();
  }

  void loadData() async {
    SharedPreferences sp = await SharedPreferences.getInstance();

    setState(() {
      name = sp.getString('name') ?? '';
      email = sp.getString('email') ?? '';
      password = sp.getString('password') ?? '';
      age = sp.getString('age') ?? '';
      userType = sp.getString('userType') ?? '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Email :\n'),
                      Text('Password :\n'),
                      Text('Age :\n'),
                      Text('userType :\n'),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('${email.toString()}\n'),
                      Text('${password.toString()}\n'),
                      Text('${age.toString()}\n'),
                      Text('${userType.toString().toUpperCase()}\n'),
                    ],
                  )
                ]),
          ),
        ],
      ),
    );
  }
}

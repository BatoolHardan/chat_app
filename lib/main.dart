import 'package:chat_01/screens/login_page.dart';
import 'package:chat_01/screens/register_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Scholarchat());
}

class Scholarchat extends StatelessWidget {
  const Scholarchat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'LoginPage': (context) => LoginPage(),
        RegiterPage.id: (context) => RegiterPage()
      },
      initialRoute: 'LoginPage',
    );
  }
}

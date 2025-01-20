import 'package:chat_01/screens/login_page.dart';
import 'package:chat_01/screens/register_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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

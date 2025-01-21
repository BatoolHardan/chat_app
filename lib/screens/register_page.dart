import 'package:chat_01/constants.dart';
import 'package:chat_01/widgets/custom_buttom.dart';
import 'package:chat_01/widgets/custom_text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class RegiterPage extends StatelessWidget {
  RegiterPage({super.key, this.email, this.password});
  static String id = 'registerPage';
  String? email;
  String? password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(children: [
          SizedBox(
            height: 75,
          ),
          Image.asset(
            'assets/images/scholar.png',
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Scholer Chat',
                style: TextStyle(
                    fontSize: 32, color: Colors.white, fontFamily: 'Pacifico'),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                ' REGISTER',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextfeild(
              onChanged: (data) {
                email = data;
              },
              hintText: 'Email'),
          SizedBox(
            height: 10,
          ),
          CustomTextfeild(
              onChanged: (data) {
                password = data;
              },
              hintText: 'Password'),
          SizedBox(
            height: 10,
          ),
          CustomButton(
            text: 'REGISTER',
            onTap: () async {
              var auth = FirebaseAuth.instance;
              UserCredential user = await auth.createUserWithEmailAndPassword(
                  email: email!, password: password!);
              print(user.user!.displayName);
            },
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'already have an account ',
                style: TextStyle(color: Colors.white),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Text(
                  '  Login',
                  style: TextStyle(color: Color(0xffC7EDE6)),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}

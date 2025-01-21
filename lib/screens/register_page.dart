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
  GlobalKey<FormState> formkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Form(
          key: formkey,
          child: ListView(children: [
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
                      fontSize: 32,
                      color: Colors.white,
                      fontFamily: 'Pacifico'),
                ),
              ],
            ),
            SizedBox(
              height: 75,
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
                if (formkey.currentState!.validate()) {
                  try {
                    await RegisterUser();
                  } on FirebaseAuthException catch (ex) {
                    if (ex.code == 'weak-password') {
                      ShowSnacBar(context, 'weak password');
                    } else if (ex.code == 'email-already-in-use') {
                      ShowSnacBar(context, 'email already exists');
                    }
                  } catch (ex) {
                    ShowSnacBar(context, 'there was an error');
                  }
                  ShowSnacBar(context, 'success');
                }
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
      ),
    );
  }

  void ShowSnacBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  Future<void> RegisterUser() async {
    UserCredential user = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email!, password: password!);
  }
}

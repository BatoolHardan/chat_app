import 'package:chat_01/constants.dart';
import 'package:chat_01/widgets/custom_buttom.dart';
import 'package:chat_01/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class RegiterPage extends StatelessWidget {
  const RegiterPage({super.key});
  static String id = 'registerPage';
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
          CustomTextfeild(hintText: 'Email'),
          SizedBox(
            height: 10,
          ),
          CustomTextfeild(hintText: 'Password'),
          SizedBox(
            height: 10,
          ),
          CustomButton(
            text: 'REGISTER',
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

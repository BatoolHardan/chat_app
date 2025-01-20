import 'package:chat_01/constants.dart';
import 'package:chat_01/screens/register_page.dart';
import 'package:chat_01/widgets/custom_buttom.dart';
import 'package:chat_01/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(children: [
          Spacer(
            flex: 2,
          ),
          Image.asset('assets/images/scholar.png'),
          Text(
            'Scholer Chat',
            style: TextStyle(
                fontSize: 32, color: Colors.white, fontFamily: 'Pacifico'),
          ),
          Spacer(
            flex: 2,
          ),
          Row(
            children: [
              Text(
                'LOGIN',
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
            text: 'LOGIN',
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'dont \t have an account ?',
                style: TextStyle(color: Colors.white),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, RegiterPage.id);
                },
                child: Text(
                  '  Register',
                  style: TextStyle(color: Color(0xffC7EDE6)),
                ),
              ),
            ],
          ),
          Spacer(
            flex: 3,
          )
        ]),
      ),
    );
  }
}

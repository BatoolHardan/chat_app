import 'package:chat_01/widgets/custom_buttom.dart';
import 'package:chat_01/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class RegiterPage extends StatelessWidget {
  const RegiterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2B475E),
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
          Spacer(
            flex: 3,
          )
        ]),
      ),
    );
  }
}

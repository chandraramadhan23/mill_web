import 'package:factory_web/shared/theme.dart';
import 'package:factory_web/ui/pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SizedBox(
        width: 400,
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            SizedBox(
              height: 100,
              width: double.infinity,
              child: Image.asset('assets/logo.png'),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              cursorColor: kPrimary,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.only(bottom: 10),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: kGray),
                  ),
                  icon: Icon(
                    Icons.email,
                    color: kPrimary,
                  ),
                  hintText: 'Masukan e-mail',
                  hintStyle: grayTextStyle.copyWith(fontSize: 13),
                  labelText: 'e-mail',
                  labelStyle: const TextStyle(fontSize: 14)),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              cursorColor: kPrimary,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.only(bottom: 10),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: kGray),
                  ),
                  icon: Icon(
                    Icons.lock,
                    color: kPrimary,
                  ),
                  hintText: 'Masukan password',
                  hintStyle: grayTextStyle.copyWith(fontSize: 13),
                  labelText: 'password',
                  labelStyle: const TextStyle(fontSize: 14)),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 40,
              width: 150,
              decoration: BoxDecoration(
                color: kPrimary,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                  child: GestureDetector(
                onTap: () {
                  FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                          email: emailController.text,
                          password: passwordController.text)
                      .then(
                        (value) => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MainPage(),
                          ),
                        ),
                      );
                },
                child: Text(
                  'Submit',
                  style: TextStyle(color: kWhite),
                ),
              )),
            ),
          ],
        ),
      ),
    ));
  }
}

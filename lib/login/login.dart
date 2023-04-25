import 'package:flutter/material.dart';

import '../routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool hide = true;
  bool rememberMe = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'images/logo.png',
                height: 80,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Sign In',
                  style: TextStyle(
                    color: Color(0xff36344D),
                    fontSize: 34,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'User ID',
                  style: TextStyle(
                    color: Color(0xff36344D),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 3,
                  child: TextFormField(
                    style: const TextStyle(
                      color: Color(0xff36344D),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                    decoration: const InputDecoration(
                      hintText: 'Enter User ID',
                      hintStyle: TextStyle(
                        color: Color(0xff36344D),
                        fontWeight: FontWeight.normal,
                      ),
                      prefixIcon: Icon(
                        Icons.mail_outline_rounded,
                        color: Color(0xff36344D),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xff36344D), width: 2),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xff36344D), width: 2),
                      ),
                    ),
                  ),
                ),
                // For Password
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Password',
                  style: TextStyle(
                    color: Color(0xff36344D),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 3,
                  child: TextFormField(
                    obscureText: hide,
                    style: const TextStyle(
                      color: Color(0xff36344D),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                    decoration: InputDecoration(
                      suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            hide = !hide;
                          });
                        },
                        child: Icon(
                          hide ? Icons.visibility : Icons.visibility_off,
                          color: const Color(0xff36344D),
                        ),
                      ),
                      hintText: 'Enter your password',
                      hintStyle: const TextStyle(
                        color: Color(0xff36344D),
                        fontWeight: FontWeight.normal,
                      ),
                      prefixIcon: const Icon(
                        Icons.lock_outline_rounded,
                        color: Color(0xff36344D),
                      ),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xff36344D), width: 2),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xff36344D), width: 2),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 3,
                  child: Row(
                    children: [
                      Checkbox(
                        activeColor: Color(0xff36344D),
                        focusColor: Color(0xff36344D),
                        value: rememberMe,
                        onChanged: (value) {
                          setState(() {
                            rememberMe = !rememberMe;
                          });
                        },
                      ),
                      const Text('Remember Me'),
                      const Spacer(),
                      InkWell(
                        onTap: () {},
                        child: const Text(
                          'Forgot Password?',
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width / 3,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: const Color(0xff36344D),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        )),
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.allFeatures);
                    },
                    child: const Text(
                      'Log In',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

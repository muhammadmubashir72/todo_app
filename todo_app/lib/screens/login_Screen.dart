// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/screens/imgShowScreen.dart';

TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();

// ignore: camel_case_types
class Login_Screen extends StatefulWidget {
  const Login_Screen({super.key});

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

// ignore: camel_case_types
class _Login_ScreenState extends State<Login_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff000000),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 38.4),
              child: Padding(
                padding: const EdgeInsets.only(right: 900),
                child: Text("Login",
                    style: GoogleFonts.lato(
                      fontWeight: FontWeight.w700,
                      fontSize: 32,
                      color: const Color(0xffFFFFFF),
                    )),
              ),
            ),
            // ignore: avoid_unnecessary_containers
            Container(
              child: Padding(
                padding: const EdgeInsets.only(right: 900, bottom: 12),
                child: Text(
                  "User Name",
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: const Color(0xffFFFFFF),
                  ),
                ),
              ),
            ),
            TextField(
              controller: passwordController,
              style: const TextStyle(color: Color(0xffFFFFFF)),
              cursorColor: const Color(0xffFFFFFF),
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                  width: 2,
                  color: Color(0xff979797),
                )),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Color(0xff979797))),
                hintText: "Enter Your User NAme",
                hintStyle: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 24.08),
              child: Padding(
                padding: const EdgeInsets.only(right: 920, bottom: 12),
                child: Text(
                  "Password",
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: const Color(0xffFFFFFF),
                  ),
                ),
              ),
            ),
            TextField(
              controller: passwordController,
              style: const TextStyle(color: Color(0xffFFFFFF)),
              obscureText: true,
              cursorColor: const Color(0xffFFFFFF),
              decoration: const InputDecoration(
                hintText: "*************",
                hintStyle: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                  width: 2,
                  color: Color(0xff979797),
                )),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Color(0xff979797))),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 38.4),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff8687E7)),
                onPressed: () {
                  setState(() {
                    // ignore: avoid_print
                    print(emailController.text);
                    // ignore: avoid_print
                    print(passwordController.text);
                  });
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 462),
                  child: Text("Login",
                      style: GoogleFonts.lato(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: const Color(0xffFFFFFF),
                      )),
                ),
              ),
            ),
            Container(
              width: 60,
              height: 55,
              margin: const EdgeInsets.only(top: 40, left: 850),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff8687E7),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ImageScreen()));
                  },
                  child: const Icon(Icons.add)),
            )
          ],
        ),
      ),
    );
  }
}

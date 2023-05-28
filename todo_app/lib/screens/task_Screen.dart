import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff000000),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 30.1, right: 900),
            child: Text("Add Task",
                style: GoogleFonts.lato(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: const Color(0xffFFFFFF),
                )),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 3, horizontal: 15),
            child: TextField(
              style: TextStyle(color: Color(0xffFFFFFF)),
              cursorColor: Color(0xffFFFFFF),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                  width: 2,
                  color: Color(0xff979797),
                )),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Color(0xff979797))),
                hintText: "Do Maths HomeWork",
                hintStyle: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 3, horizontal: 15),
            child: TextField(
              style: TextStyle(color: Color(0xffFFFFFF)),
              cursorColor: Color(0xffFFFFFF),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                  width: 2,
                  color: Color(0xff979797),
                )),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Color(0xff979797))),
                hintText: "Do Chapter 2 to 5 for HomeWork",
                hintStyle: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/screens/todo_list.dart';

class ImageScreen extends StatefulWidget {
  const ImageScreen({super.key});

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: _showAppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 40),
              child: Image.asset(
                "assets/Mid_image.png",
                width: 227,
                height: 227,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 350),
              child: Text("What do you want to do today?",
                  style: GoogleFonts.lato(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      // ignore: use_full_hex_values_for_flutter_colors
                      color: const Color(0xffFFFFFFDE))),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 400),
              child: Text("Tap + to add your tasks",
                  style: GoogleFonts.lato(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      // ignore: use_full_hex_values_for_flutter_colors
                      color: const Color(0xffFFFFFFDE))),
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
                          builder: (context) => const TodoListScreen()));
                },
                child: const Icon(Icons.add),
              ),
            )
          ],
        ));
  }

  AppBar _showAppBar() {
    return AppBar(
      backgroundColor: Colors.black,
      leading: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Image.asset("assets/sort.png"),
      ),
      centerTitle: true,
      title: Text(
        'Todo',
        style: GoogleFonts.lato(
          fontWeight: FontWeight.w400,
          fontSize: 20,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Image.asset(
            "assets/user.png",
            height: 42,
            width: 42,
          ),
        )
      ],
    );
  }
}

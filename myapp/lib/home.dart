import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './personal.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _textController = TextEditingController();
  final _textController_2 = TextEditingController();
  String userEmale = "karimhijazi675@gmail.com";
  String user_pssword = "1234";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.grey.shade300,
      body:
          // welcome statment
          Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("images/m.png"))),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              " manga world",
              style: GoogleFonts.bebasNeue(
                fontSize: 60,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Ready to start the journey we missed you ",
                style: TextStyle(fontSize: 25, color: Colors.red)),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: TextField(
                    controller: _textController,
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: "Email"),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            // password
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: TextField(
                    controller: _textController_2,
                    obscureText: true,
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: "password"),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),

            // sign in
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (userEmale.contains(_textController.text) &&
                      user_pssword.contains(_textController_2.text)) {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return personal();
                      },
                    ));
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Text(
                                    "Can you please  check your passwrd and email")
                              ],
                            ),
                          ),
                          actions: [
                            ElevatedButton(
                                onPressed: () {}, child: Text("I wil wait")),
                            ElevatedButton(
                                onPressed: () {},
                                child: Text("no i can't wait"))
                          ],
                        );
                      },
                    );
                  }
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text('Sign In'),
            ),
            SizedBox(
              height: 10,
            ),
            // Not a member? register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Not a member? ",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text(
                  " register now",
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

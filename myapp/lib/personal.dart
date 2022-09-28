import 'package:flutter/material.dart';

class personal extends StatelessWidget {
  const personal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 94, 83),
      body: Stack(
        children: [
          Transform.translate(
              offset: Offset(290, -200),
              child: Container(
                  // width: double.infinity,
                  child: Image.asset(
                "images/p.webp",
              ))),
          Transform.translate(
            offset: Offset(0, 200),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  child: ClipOval(
                      child: Image.asset(
                    "images/c.jpg",
                    fit: BoxFit.cover,
                  )),
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100.0),
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Maik Jounathan",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 100.0),
                    child: Column(
                      children: [
                        _bulledcontanet("Age", "18"),
                        _bulledcontanet("Status", "active"),
                      ],
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _bulledAction(Icons.favorite, "favorat"),
                    SizedBox(
                      width: 10,
                    ),
                    _bulledAction(Icons.add, "add"),
                    SizedBox(
                      width: 10,
                    ),
                    _bulledAction(Icons.thumb_up, "liked"),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _bulledAction(IconData icon, String actionText) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(children: [
        Icon(
          icon,
          size: 40,
        ),
        Text(actionText),
      ]),
    );
  }

  Widget _bulledcontanet(String textaction, String Age) {
    return Row(
      children: [
        Text(
          textaction,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Text(
          Age,
          style: TextStyle(fontSize: 20),
        )
      ],
    );
  }
}

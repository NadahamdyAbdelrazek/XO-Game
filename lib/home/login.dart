import 'package:flutter/material.dart';
import 'package:untitled1/home/X0_Screen.dart';
import 'package:untitled1/player_model.dart';

class login extends StatelessWidget {
  static const String routename = "login";
  TextEditingController Player1 = TextEditingController();
  TextEditingController Player2 = TextEditingController();

  login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: Player1,
              decoration: InputDecoration(
                  label: Text("Player1"),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: Player2,
              decoration: InputDecoration(
                  label: Text("Player2"),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(XoGame.routename,
                    arguments: PlayerModel(Player1.text, Player2.text));
              },
              child: Text(
                "Let's Go",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            )
          ],
        ),
      ),
    );
  }
}

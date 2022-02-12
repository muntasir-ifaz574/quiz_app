import 'package:flutter/material.dart';
import 'package:quiz_app/main.dart';

class ResultScreen extends StatefulWidget {
  final int scroe;
  const ResultScreen(this.scroe, {Key? key}) : super(key: key);

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    Color mainColor = Color(0xff36867d);
    return Scaffold(
      backgroundColor: mainColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Congratulations",
              style: TextStyle(
                color: Colors.white,
                fontSize: 38,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Your Score is : ",
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "${widget.scroe}",
              style: TextStyle(
                color: Color(0xE5DE0B0B),
                fontSize: 80,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 60,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
              elevation: 0.0,
              color: Color(0xE50B8ADE),
              textColor: Colors.white,
              child: Text("Repeat the Quiz"),
            ),
          ],
        ),
      ),
    );
  }
}

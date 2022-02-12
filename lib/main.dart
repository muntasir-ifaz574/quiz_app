import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions_list.dart';
import 'package:quiz_app/screens/result_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color mainColor = Color(0xff36867d);
  Color secondColor = Color(0xFF117eeb);
  PageController? _controller = PageController(initialPage: 0);
  bool isPressed = false;
  Color isTrue = Colors.green;
  Color isWrong = Colors.red;
  Color btnColor = Color(0xFF117eeb);
  int score = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Padding(
        padding: EdgeInsets.all(18),
        child: PageView.builder(
          physics: NeverScrollableScrollPhysics(),
          controller: _controller!,
          onPageChanged: (page) {
            setState(() {
              isPressed = false;
            });
          },
          itemCount: questions.length,
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Question ${index + 1} /${questions.length}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 28,
                    ),
                  ),
                ),
                Divider(
                  color: Colors.white,
                  height: 8,
                  thickness: 1,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  questions[index].question!,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                for (int i = 0; i < questions[index].answer!.length; i++)
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: 12),
                    child: MaterialButton(
                      shape: StadiumBorder(),
                      color: isPressed
                          ? questions[index].answer!.entries.toList()[i].value
                              ? isTrue
                              : isWrong
                          : secondColor,
                      padding: EdgeInsets.symmetric(vertical: 18),
                      onPressed: isPressed
                          ? () {}
                          : () {
                              setState(() {
                                isPressed = true;
                              });
                              if (questions[index]
                                  .answer!
                                  .entries
                                  .toList()[i]
                                  .value) {
                                score += 10;
                                print(score);
                              }
                            },
                      // () {
                      //   setState(() {
                      //     isPressed = true;
                      //   });
                      //   if (questions[index]
                      //       .answer!
                      //       .entries
                      //       .toList()[i]
                      //       .value) {
                      //     score += 10;
                      //   }
                      // else {
                      //   setState(() {
                      //     btnColor = isWrong;
                      //   });
                      // }
                      // },
                      child: Text(
                        questions[index].answer!.keys.toList()[i],
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    OutlinedButton(
                      onPressed: isPressed
                          ? index + 1 == questions.length
                              ? () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ResultScreen(score),
                                    ),
                                  );
                                }
                              : () {
                                  _controller!.nextPage(
                                    duration: Duration(milliseconds: 200),
                                    curve: Curves.linear,
                                  );
                                  setState(() {
                                    isPressed = false;
                                  });
                                }
                          : null,
                      style: OutlinedButton.styleFrom(
                        shape: StadiumBorder(),
                        side: BorderSide(
                          color: Color(0xE50B8ADE),
                          width: 1,
                        ),
                      ),
                      child: Text(
                        index + 1 == questions.length
                            ? "See result"
                            : "Next Question",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

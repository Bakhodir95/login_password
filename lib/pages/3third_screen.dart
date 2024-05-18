import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:login_password/pages/4fourth_screen.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThordScreenState();
}

class _ThordScreenState extends State<ThirdScreen> {
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 100, 20, 10),
        child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Set Your Schedule",
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 30),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Quiqckly see your upcoming events, tasks,\nconfidence calls, weather and more",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Container(
                    height: 400,
                    clipBehavior: Clip.hardEdge,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/fifth.png"),
                            fit: BoxFit.cover)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: const ButtonStyle(
                      padding: MaterialStatePropertyAll(
                          EdgeInsets.symmetric(vertical: 15)),
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 5, 51, 202))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FourthScreen()),
                    );
                  },
                  child: const Text(
                    "Create Acccount",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade200),
                      child: Row(
                        children: [Icon(Icons.apple), Text(" Apple")],
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade200),
                      child: Row(
                        children: [
                          Icon(MaterialCommunityIcons.google),
                          Text(" Google")
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "You Have Account?   ",
                          style: TextStyle(color: Colors.grey)),
                      TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FourthScreen()),
                              );
                            },
                          text: "Log in",
                          style: TextStyle(color: Colors.blue.shade900))
                    ])),
                  ],
                )
              ],
            )),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_7/screens/homescreen.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 230, 236),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Top section
          Padding(
            padding: EdgeInsets.symmetric(vertical: 70),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    'Ready To Learn?',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(13),
                  child: Text(
                    "Plan has a lot of courses, from Designing to Programming & more.",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: Stack(
              children: [
                Positioned.fill(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Center(
                        child: Container(
                          width: 530,
                          height: 530,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(153, 194, 37, 16),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(240),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Image.asset(
                                  'assets/imgcont-previwe.png',
                                  height: 430,
                                  width: 430,
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Homescreen()));
                                  },
                                  child: Container(
                                    height: 60,
                                    width: 60,
                                    margin: EdgeInsets.all(13),
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(209, 240, 128, 165),
                                      borderRadius: BorderRadius.circular(19),
                                    ),
                                    child: Icon(Icons.double_arrow,
                                        color: const Color.fromARGB(
                                            255, 251, 239, 239),
                                        size: 30),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

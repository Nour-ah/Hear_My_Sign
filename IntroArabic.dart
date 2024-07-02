import 'package:flutter/material.dart';
import 'package:test_grad/views/AlpaArabic.dart';
import 'package:test_grad/views/ColorArabicMenu.dart';
import 'package:test_grad/views/DayArabicMenu.dart';
import 'package:test_grad/views/NumArabic.dart';
import 'package:test_grad/views/Welcome_Page2.dart';
import 'package:test_grad/widgets/learn_cardE.dart';


class Home_Page_Arabic extends StatelessWidget {
  const Home_Page_Arabic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 10,
        shadowColor: Color.fromARGB(255, 245, 240, 240),
        title: const Text(
          "                  تعلم",
          style: TextStyle(
            //fontFamily: 'Lobster',
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 139, 71, 14),
          ),
        ),
        leading: GestureDetector(
          child: const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 40,
            ),
          ),
          onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => Welcome_Page2())),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width / 0.1,
            height: MediaQuery.of(context).size.height / 2.8,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/NewMain/Simplification.jpg"),
                fit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 75),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NumArabic()));
                          },
                          child: LearnCardE(
                            image: 'assets/images/NewMain/Frame 126.jpg',
                            label: 'ارقام',
                            color: const Color(0xFF649192),
                            left: 50.0,
                            ontap: () {},
                          ),
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ColorsArabicMenu()));
                          },
                          child: LearnCardE(
                            image: 'assets/images/NewMain/Simplification4.jpg',
                            label: 'الوان',
                            left: 50.0,
                            color: const Color(0xFF649192),
                            ontap: () {},
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DayArabicMenu()));
                          },
                          child: LearnCardE(
                            image: 'assets/images/NewMain/Simplification6.jpg',
                            label: 'الايام',
                            color: const Color(0xFF649192),
                            left: 50.0,
                            ontap: () {},
                          ),
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Alpa_Arabic()));
                          },
                          child: LearnCardE(
                            image: 'assets/images/NewMain/Frame 128.jpg',
                            label: 'حروف',
                            left: 40.0,
                            color: const Color(0xFF649192),
                            ontap: () {},
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_grad/controller/QuizArabicColor.dart';
import 'package:test_grad/widgets/CustomButton.dart';
import 'package:test_grad/widgets/ProgressTimerArabicColor.dart';
import 'package:test_grad/widgets/QuestionCardArabicColor.dart';


class QuizScreenArabicColor extends StatelessWidget {
  const QuizScreenArabicColor({Key? key}) : super(key: key);
  static const routeName = '/quiz_screen3';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F1ED),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            decoration: const BoxDecoration(color: Colors.white),
          ),
          SafeArea(
            child: GetBuilder<QuizArabicColor>(
              init: QuizArabicColor(),
              builder: (controller) => SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                            text: TextSpan(
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineLarge!
                                    .copyWith(
                                      color: const Color(0xFF649192),
                                    ),
                                children: [
                                  TextSpan(
                                      text: controller.numberOfQuestion
                                          .round()
                                          .toString(),
                                      style: Theme.of(context)
                                          .textTheme
                                           .headlineLarge!
                                          .copyWith(
                                            color: const Color(0xFF649192),
                                            fontSize: 40,
                                            fontWeight: FontWeight.bold,
                                          )),
                                  TextSpan(
                                      text: '/',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineMedium!
                                          .copyWith(
                                            color: const Color(0xFF649192),
                                          )),
                                  TextSpan(
                                      text:
                                          controller.countOfQuestion.toString(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineMedium!
                                          .copyWith(
                                            color: const Color(0xFF649192),
                                          )),
                                ]),
                          ),
                          ProgressTimerArabicColor(),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 1.0,
                      child: PageView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) =>
                            QuestionCardArabicColor(
                          questionModel: controller.questionsList[index],
                        ),
                        controller: controller.pageController,
                        itemCount: controller.questionsList.length,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: GetBuilder<QuizArabicColor>(
        init: QuizArabicColor(),
        builder: (controller) => CustomButton(
            onPressed: () => controller.nextQuestion(), text: 'التالي'),
      ),
    );
  }
}
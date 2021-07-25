import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:python/controllers/question_controller.dart';
import 'package:python/models/Questions.dart';

import '../../../constants.dart';
import 'option.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    Key key,
    // it means we have to pass this
    @required this.question,
  }) : super(key: key);

  final Question question;

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Text(
            question.question,
            style: Theme.of(context)
                .textTheme
                .headline6
                .copyWith(color: kBlackColor),
          ),
          SizedBox(height: kDefaultPadding / 2),
           Option(
              index: 0,
              text: question.a,
              press: () => _controller.checkAns(question, 0),
            ),
          Option(
            index: 1,
            text: question.b,
            press: () => _controller.checkAns(question, 1),
          ),
          Option(
            index: 2,
            text: question.c,
            press: () => _controller.checkAns(question, 2),
          ),
          Option(
            index: 3,
            text: question.d,
            press: () => _controller.checkAns(question, 3),
          ),
        ],
      ),
    );
  }
}

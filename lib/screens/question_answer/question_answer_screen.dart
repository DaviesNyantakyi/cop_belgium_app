import 'package:flutter/material.dart';

import '../../widgets/question_card.dart';

class QuestioAnswerScreen extends StatelessWidget {
  const QuestioAnswerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Q&A',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
      body: Center(
        child: ListView.separated(
          itemBuilder: (context, index) {
            return const QuestionCard();
          },
          separatorBuilder: (context, index) {
            return Container(height: 4);
          },
          itemCount: 50,
        ),
      ),
    );
  }
}

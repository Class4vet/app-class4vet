import 'package:flutter/material.dart';
import 'package:class4vet/theme/color.dart';
import 'package:class4vet/models/quiz.dart';

class QuizResultPage extends StatelessWidget {
  final List<Quiz> quizzes;
  final List<int?> userAnswers;

  const QuizResultPage({
    Key? key,
    required this.quizzes,
    required this.userAnswers,
  }) : super(key: key);

  int get correctAnswers {
    int count = 0;
    for (int i = 0; i < quizzes.length; i++) {
      if (userAnswers[i] == quizzes[i].correctAnswerIndex) {
        count++;
      }
    }
    return count;
  }

  @override
  Widget build(BuildContext context) {
    final score = (correctAnswers / quizzes.length * 100).round();
    final screenSize = MediaQuery.of(context).size;
    final isSmallScreen = screenSize.width < 600;

    return Scaffold(
      backgroundColor: AppColor.appBgColor,
      appBar: AppBar(
        title: const Text('시험 결과'),
        backgroundColor: AppColor.appBarColor,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            constraints: BoxConstraints(
              maxWidth: isSmallScreen ? screenSize.width : 600,
            ),
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: isSmallScreen ? screenSize.width * 0.5 : 200,
                  height: isSmallScreen ? screenSize.width * 0.5 : 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColor.primary.withOpacity(0.1),
                  ),
                  child: Center(
                    child: Text(
                      '$score%',
                      style: TextStyle(
                        fontSize: isSmallScreen ? 32 : 40,
                        fontWeight: FontWeight.bold,
                        color: AppColor.primary,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Text(
                  '총 ${quizzes.length}문제 중 $correctAnswers문제 정답',
                  style: TextStyle(
                    fontSize: isSmallScreen ? 18 : 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    _getResultMessage(score),
                    style: TextStyle(
                      fontSize: isSmallScreen ? 14 : 16,
                      color: Colors.grey[600],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 40),
                SizedBox(
                  width: isSmallScreen ? screenSize.width * 0.7 : 200,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.primary,
                      minimumSize: const Size.fromHeight(50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    child: const Text(
                      '돌아가기',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String _getResultMessage(int score) {
    if (score >= 90) {
      return '우수한 성적입니다! 수의학에 대한 깊은 이해를 보여주셨네요.';
    } else if (score >= 70) {
      return '좋은 성적입니다! 몇 가지 부분만 더 보완하면 될 것 같아요.';
    } else if (score >= 50) {
      return '보통의 성적입니다. 수의학에 대한 기본적인 이해가 있으시네요.';
    } else {
      return '조금 더 공부가 필요해 보입니다. 수의학의 기본 원칙들을 다시 한번 살펴보세요.';
    }
  }
}

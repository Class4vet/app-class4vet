class Quiz {
  final String question;
  final List<String> options;
  final int correctAnswerIndex;

  Quiz({
    required this.question,
    required this.options,
    required this.correctAnswerIndex,
  });
}

class QuizData {
  static List<Quiz> getDummyQuizzes() {
    return [
      Quiz(
        question: "수의학에서 가장 중요한 기본 원칙은 무엇인가요?",
        options: [
          "동물의 복지를 최우선으로 한다",
          "치료 비용을 최소화한다",
          "최신 장비를 사용한다",
          "빠른 진단을 한다"
        ],
        correctAnswerIndex: 0,
      ),
      Quiz(
        question: "동물의 체온을 측정할 때 가장 정확한 방법은?",
        options: ["구강 측정", "귀 측정", "항문 측정", "피부 측정"],
        correctAnswerIndex: 2,
      ),
      Quiz(
        question: "수의사가 진단 시 가장 먼저 확인해야 하는 것은?",
        options: ["동물의 나이", "동물의 체중", "동물의 병력", "동물의 품종"],
        correctAnswerIndex: 2,
      ),
      Quiz(
        question: "개와 고양이의 정상 체온 범위는?",
        options: ["35-37°C", "37-39°C", "38-39.5°C", "40-42°C"],
        correctAnswerIndex: 2,
      ),
      Quiz(
        question: "동물의 심장 박동수를 측정하는 가장 정확한 부위는?",
        options: ["목 부위", "가슴 부위", "다리 부위", "꼬리 부위"],
        correctAnswerIndex: 1,
      ),
      Quiz(
        question: "수의학에서 'Triage'의 의미는?",
        options: ["치료 계획", "응급 상황에서의 환자 분류", "수술 전 준비", "재활 치료"],
        correctAnswerIndex: 1,
      ),
      Quiz(
        question: "동물의 탈수 증상을 확인하는 가장 좋은 방법은?",
        options: ["피부 탄력성 검사", "체중 측정", "소변 색상 확인", "모든 위의 방법"],
        correctAnswerIndex: 3,
      ),
      Quiz(
        question: "수의학에서 'CPR'의 올바른 순서는?",
        options: ["호흡-압박-기도", "기도-호흡-압박", "압박-기도-호흡", "호흡-기도-압박"],
        correctAnswerIndex: 1,
      ),
      Quiz(
        question: "동물의 혈액 검사에서 'CBC'는 무엇을 의미하나요?",
        options: [
          "Complete Blood Chemistry",
          "Complete Blood Count",
          "Complete Body Check",
          "Complete Blood Culture"
        ],
        correctAnswerIndex: 1,
      ),
      Quiz(
        question: "수의학에서 'Zoonosis'의 의미는?",
        options: ["동물 간 전염병", "동물에서 사람에게 전염되는 질병", "동물의 유전적 질병", "동물의 면역 질환"],
        correctAnswerIndex: 1,
      ),
    ];
  }
}

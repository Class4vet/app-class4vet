enum CourseCategory {
  all,
  basic,
  advanced,
  safety,
  legal,
  emergency,
  equipment,
  practice,
  certification;

  String get displayName {
    switch (this) {
      case CourseCategory.all:
        return "All";
      case CourseCategory.basic:
        return "Basic Training";
      case CourseCategory.advanced:
        return "Advanced Training";
      case CourseCategory.safety:
        return "Safety Education";
      case CourseCategory.legal:
        return "Legal Education";
      case CourseCategory.emergency:
        return "Emergency Response";
      case CourseCategory.equipment:
        return "Equipment Management";
      case CourseCategory.practice:
        return "Practical Training";
      case CourseCategory.certification:
        return "Certification";
    }
  }

  String get icon {
    switch (this) {
      case CourseCategory.all:
        return "assets/icons/category/all.svg";
      case CourseCategory.basic:
        return "assets/icons/category/basic.svg";
      case CourseCategory.advanced:
        return "assets/icons/category/advanced.svg";
      case CourseCategory.safety:
        return "assets/icons/category/safety.svg";
      case CourseCategory.legal:
        return "assets/icons/category/legal.svg";
      case CourseCategory.emergency:
        return "assets/icons/category/emergency.svg";
      case CourseCategory.equipment:
        return "assets/icons/category/equipment.svg";
      case CourseCategory.practice:
        return "assets/icons/category/practice.svg";
      case CourseCategory.certification:
        return "assets/icons/category/certification.svg";
    }
  }
}

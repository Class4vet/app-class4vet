
//대분류 - 중분류 - 클래스 - 강의
class Category {
  final String id;
  final String name;
  final String? image;
  final List<SubCategory> subCategories;

  Category({
    required this.id,
    required this.name,
    this.image,
    required this.subCategories,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'] as String,
      name: json['name'] as String,
      image: json['image'] as String?,
      subCategories: (json['subCategories'] as List)
          .map((e) => SubCategory.fromJson(e))
          .toList(),
    );
  }
}

class SubCategory {
  final String id;
  final String name;
  final List<ClassModel> classes;

  SubCategory({
    required this.id,
    required this.name,
    required this.classes,
  });

  factory SubCategory.fromJson(Map<String, dynamic> json) {
    return SubCategory(
      id: json['id'] as String,
      name: json['name'] as String,
      classes:
          (json['classes'] as List).map((e) => ClassModel.fromJson(e)).toList(),
    );
  }
}

class ClassModel {
  final String id;
  final String name;
  final List<Lecture> lectures;

  ClassModel({
    required this.id,
    required this.name,
    required this.lectures,
  });

  factory ClassModel.fromJson(Map<String, dynamic> json) {
    return ClassModel(
      id: json['id'] as String,
      name: json['name'] as String,
      lectures:
          (json['lectures'] as List).map((e) => Lecture.fromJson(e)).toList(),
    );
  }
}

class Lecture {
  final String id;
  final String title;
  final String description;
  final String image;
  final String price;
  final String? review;
  final String? duration;
  final String? instructor;
  final String? level;

  Lecture({
    required this.id,
    required this.title,
    required this.description,
    required this.image,
    required this.price,
    this.review,
    this.duration,
    this.instructor,
    this.level,
  });

  factory Lecture.fromJson(Map<String, dynamic> json) {
    return Lecture(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      image: json['image'] as String,
      price: json['price'] as String,
      review: json['review'] as String?,
      duration: json['duration'] as String?,
      instructor: json['instructor'] as String?,
      level: json['level'] as String?,
    );
  }
}

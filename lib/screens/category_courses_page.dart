import 'package:flutter/material.dart';
import 'package:class4vet/theme/color.dart';
import 'package:class4vet/utils/data.dart';
import 'package:class4vet/widgets/course_card.dart';
import 'package:class4vet/screens/course_detail_page.dart';
import 'package:class4vet/models/category.dart';

class CategoryCoursesPage extends StatefulWidget {
  final String category;

  const CategoryCoursesPage({Key? key, required this.category})
      : super(key: key);

  @override
  _CategoryCoursesPageState createState() => _CategoryCoursesPageState();
}

class _CategoryCoursesPageState extends State<CategoryCoursesPage> {
  late Category selectedCategory;
  SubCategory? selectedSubCategory;
  final Set<String> expandedClasses = {};

  @override
  void initState() {
    super.initState();
    selectedCategory = categories.firstWhere(
      (cat) => cat.name == widget.category,
      orElse: () => categories.first,
    );
    if (selectedCategory.subCategories.isNotEmpty) {
      selectedSubCategory = selectedCategory.subCategories.first;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appBgColor,
      appBar: AppBar(
        backgroundColor: AppColor.appBarColor,
        title: Text(
          widget.category,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        children: [
          _buildSubCategoryList(),
          Expanded(
            child: _buildContent(),
          ),
        ],
      ),
    );
  }

  Widget _buildSubCategoryList() {
    return Container(
      height: 60,
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: selectedCategory.subCategories.length,
        itemBuilder: (context, index) {
          final subCategory = selectedCategory.subCategories[index];
          final isSelected = selectedSubCategory?.id == subCategory.id;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedSubCategory = subCategory;
                  expandedClasses.clear();
                });
              },
              child: Container(
                alignment: Alignment.center,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                decoration: BoxDecoration(
                  color: isSelected ? AppColor.primary : Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 5,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Text(
                  subCategory.name,
                  style: TextStyle(
                    color: isSelected ? Colors.white : AppColor.textColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildContent() {
    if (selectedSubCategory == null) {
      return Center(
        child: Text(
          '하위 카테고리를 선택해주세요',
          style: TextStyle(
            color: AppColor.textColor,
            fontSize: 16,
          ),
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      itemCount: selectedSubCategory!.classes.length,
      itemBuilder: (context, index) {
        final classModel = selectedSubCategory!.classes[index];
        final isExpanded = expandedClasses.contains(classModel.id);

        return Container(
          margin: const EdgeInsets.only(bottom: 16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            children: [
              // 항목 헤더 (클릭 가능)
              GestureDetector(
                onTap: () {
                  setState(() {
                    if (isExpanded) {
                      expandedClasses.remove(classModel.id);
                    } else {
                      expandedClasses.add(classModel.id);
                    }
                  });
                },
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: isExpanded
                        ? const BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          )
                        : BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              classModel.name,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              '${classModel.lectures.length}개의 강의',
                              style: TextStyle(
                                color: AppColor.darker,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                          color: isExpanded
                              ? AppColor.primary.withOpacity(0.1)
                              : Colors.grey[100],
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          isExpanded ? Icons.expand_less : Icons.expand_more,
                          size: 24,
                          color:
                              isExpanded ? AppColor.primary : Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // 확장된 콘텐츠 (강의 목록)
              if (isExpanded)
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                  ),
                  child: Column(
                    children: classModel.lectures.map((lecture) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: CourseCard(lecture: lecture),
                      );
                    }).toList(),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}

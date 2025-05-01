import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:class4vet/theme/color.dart';
import 'package:class4vet/utils/data.dart';
import 'package:class4vet/widgets/category_box.dart';
import 'package:class4vet/widgets/feature_item.dart';
import 'package:class4vet/widgets/notification_box.dart';
import 'package:class4vet/widgets/recommend_item.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:class4vet/screens/course_detail_page.dart';
import 'package:class4vet/widgets/custom_image.dart';
import 'package:class4vet/screens/all_courses_page.dart';
import 'package:class4vet/screens/profile_page.dart';
import 'package:class4vet/screens/category_courses_page.dart';
import 'package:class4vet/widgets/course_card.dart';
import 'package:class4vet/models/category.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appBgColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: AppColor.appBarColor,
            pinned: true,
            snap: true,
            floating: true,
            title: _buildAppBar(),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => _buildBody(),
              childCount: 1,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildAppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildProfileSection(),
        NotificationBox(notifiedNumber: 1),
      ],
    );
  }

  Widget _buildProfileSection() {
    return Row(
      children: [
        _buildProfileImage(),
        const SizedBox(width: 10),
        _buildProfileInfo(),
      ],
    );
  }

  Widget _buildProfileImage() {
    return GestureDetector(
      onTap: () => _navigateToProfile(),
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey[200],
        ),
        child: ClipOval(
          child: CachedNetworkImage(
            imageUrl: profile["image"]!,
            fit: BoxFit.cover,
            placeholder: (context, url) => const Center(
              child: CircularProgressIndicator(strokeWidth: 2),
            ),
            errorWidget: (context, url, error) => Icon(
              Icons.person,
              color: Colors.grey[400],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildProfileInfo() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          profile["name"]!,
          style: TextStyle(
            color: AppColor.labelColor,
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          "Good Morning!",
          style: TextStyle(
            color: AppColor.textColor,
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
        ),
      ],
    );
  }

  void _navigateToProfile() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ProfilePage()),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildCategories(),
          const SizedBox(height: 15),
          _buildFeaturesSection(),
          const SizedBox(height: 15),
          _buildRecommendedHeader(),
          _buildRecommendSection(),
        ],
      ),
    );
  }

  Widget _buildCategories() {
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(15, 10, 0, 10),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          categories.length,
          (index) => Padding(
            padding: const EdgeInsets.only(right: 15),
            child: _buildCategoryItem(categories[index]),
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryItem(Category category) {
    return GestureDetector(
      onTap: () => _navigateToCategory(category.name),
      child: CategoryBox(
        selectedColor: Colors.white,
        data: {
          'name': category.name,
          'icon': category.image,
        },
        onTap: null,
      ),
    );
  }

  void _navigateToCategory(String categoryName) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CategoryCoursesPage(category: categoryName),
      ),
    );
  }

  Widget _buildRecommendedHeader() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Recommended",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: AppColor.textColor,
            ),
          ),
          GestureDetector(
            onTap: () => _navigateToAllCourses(),
            child: Text(
              "See all",
              style: TextStyle(fontSize: 14, color: AppColor.darker),
            ),
          ),
        ],
      ),
    );
  }

  void _navigateToAllCourses() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const AllCoursesPage()),
    );
  }

  Widget _buildFeaturesSection() {
    final featuredLectures = _getFeaturedLectures();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionHeader("Featured"),
        SizedBox(
          height: 250,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            itemCount: featuredLectures.length,
            itemBuilder: (context, index) =>
                _buildCourseCard(featuredLectures[index]),
          ),
        ),
      ],
    );
  }

  List<Lecture> _getFeaturedLectures() {
    final featuredLectures = <Lecture>[];
    for (final category in categories) {
      for (final subCategory in category.subCategories) {
        for (final classModel in subCategory.classes) {
          featuredLectures.addAll(classModel.lectures);
        }
      }
    }
    return featuredLectures.take(3).toList();
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w600,
          color: AppColor.textColor,
        ),
      ),
    );
  }

  Widget _buildCourseCard(Lecture lecture) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: SizedBox(
        width: 250,
        child: CourseCard(
          lecture: lecture,
          isHorizontal: true,
        ),
      ),
    );
  }

  void _navigateToCourseDetail(Lecture lecture) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CourseDetailPage(lecture: lecture),
      ),
    );
  }

  Widget _buildRecommendSection() {
    final recommendLectures = _getRecommendLectures();

    return SizedBox(
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        itemCount: recommendLectures.length,
        itemBuilder: (context, index) =>
            _buildCourseCard(recommendLectures[index]),
      ),
    );
  }

  List<Lecture> _getRecommendLectures() {
    final allLectures = <Lecture>[];
    for (final category in categories) {
      for (final subCategory in category.subCategories) {
        for (final classModel in subCategory.classes) {
          allLectures.addAll(classModel.lectures);
        }
      }
    }

    final recommends = allLectures.where((lecture) {
      try {
        final score = double.parse(lecture.review ?? '0');
        return score >= 4.8;
      } catch (e) {
        return false;
      }
    }).toList();

    if (recommends.isEmpty) {
      return allLectures.take(3).toList();
    }

    return recommends;
  }
}

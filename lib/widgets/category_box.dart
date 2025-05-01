import 'package:flutter/material.dart';
import 'package:class4vet/theme/color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CategoryBox extends StatelessWidget {
  CategoryBox({
    Key? key,
    required this.data,
    this.isSelected = false,
    this.onTap,
    this.selectedColor = AppColor.actionColor,
  }) : super(key: key);

  final data;
  final Color selectedColor;
  final bool isSelected;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            curve: Curves.fastOutSlowIn,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: isSelected ? AppColor.red : Colors.white,
              boxShadow: [
                BoxShadow(
                  color: AppColor.shadowColor.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: const Offset(1, 1),
                ),
              ],
              shape: BoxShape.circle,
            ),
            child: _buildIcon(),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            data["name"],
            maxLines: 1,
            overflow: TextOverflow.fade,
            style: TextStyle(
              color: AppColor.textColor,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildIcon() {
    final icon = data["icon"];
    if (icon == null) {
      return const Icon(
        Icons.category,
        size: 30,
        color: AppColor.textColor,
      );
    }

    if (icon.toString().startsWith('http')) {
      return ClipOval(
        child: CachedNetworkImage(
          imageUrl: icon,
          width: 30,
          height: 30,
          fit: BoxFit.cover,
          placeholder: (context, url) => const Center(
            child: CircularProgressIndicator(strokeWidth: 2),
          ),
          errorWidget: (context, url, error) => const Icon(
            Icons.error,
            size: 30,
            color: AppColor.textColor,
          ),
        ),
      );
    }

    return SvgPicture.asset(
      icon,
      color: isSelected ? selectedColor : AppColor.textColor,
      width: 30,
      height: 30,
    );
  }
}

import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:class4vet/theme/color.dart';

class NotificationBox extends StatelessWidget {
  NotificationBox({
    Key? key,
    this.onTap,
    this.size = 5,
    this.notifiedNumber = 0,
  }) : super(key: key);

  final GestureTapCallback? onTap;
  final int notifiedNumber;
  final double size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(size),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColor.appBarColor,
          border: Border.all(
            color: Colors.grey.withOpacity(.3),
          ),
        ),
        child: notifiedNumber > 0 ? _buildIconNotified() : _buildIcon(),
      ),
    );
  }

  Widget _buildIconNotified() {
    return badges.Badge(
      badgeStyle: badges.BadgeStyle(
        badgeColor: AppColor.actionColor,
        padding: EdgeInsets.all(3),
      ),
      position: badges.BadgePosition.topEnd(top: -7, end: 0),
      badgeContent: Text(
        '',
        style: TextStyle(color: Colors.white),
      ),
      child: SvgPicture.asset(
        "assets/icons/bell.svg",
        width: 20.0,
        height: 20.0,
      ),
    );
  }

  Widget _buildIcon() {
    return SvgPicture.asset(
      "assets/icons/bell.svg",
      width: 20.0,
      height: 20.0,
    );
  }
}

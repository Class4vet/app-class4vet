import 'package:flutter/material.dart';
import 'package:class4vet/theme/color.dart';
import 'chat_notify.dart';
import 'custom_image.dart';

class ChatItem extends StatelessWidget {
  final Map<String, dynamic> data;

  const ChatItem(this.data, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: AppColor.shadowColor.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Row(
        children: [
          CustomImage(
            data["image"] ?? '',
            width: 60,
            height: 60,
            radius: 30,
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data["name"] ?? '',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  data["role"] ?? '',
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColor.darker,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  data["lastMessage"] ?? '',
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColor.darker,
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                data["time"] ?? '',
                style: TextStyle(
                  fontSize: 14,
                  color: AppColor.darker,
                ),
              ),
              const SizedBox(height: 5),
              if ((data["unread"] ?? 0) > 0)
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: AppColor.primary,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "${data["unread"]}",
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}

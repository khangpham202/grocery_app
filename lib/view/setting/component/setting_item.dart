import 'package:flutter/material.dart';

class SettingItem extends StatelessWidget {
  final String? title;
  final VoidCallback onTapItem;
  const SettingItem({super.key, this.title, required this.onTapItem});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapItem,
      child: Container(
        height: 60,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            border: Border.all(color: Colors.grey.withOpacity(0.4)),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 0.1,
                  blurRadius: 7)
            ]),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title ?? '',
                  style: const TextStyle(
                      fontWeight: FontWeight.w500, fontSize: 18)),
              const Icon(Icons.keyboard_arrow_left_outlined),
            ],
          ),
        ),
      ),
    );
  }
}

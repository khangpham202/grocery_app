import 'package:flutter/material.dart';
import 'package:my_shopping_app/view/setting/component/setting_item.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildHeader(),
        SettingItem(
          title: 'Profile Info',
          onTapItem: () {},
        ),
        SettingItem(
          title: 'Notification',
          onTapItem: () {},
        ),
        SettingItem(
          title: 'Setting',
          onTapItem: () {},
        ),
        SettingItem(
          title: 'About Us',
          onTapItem: () {},
        ),
        SettingItem(
          title: 'Term Of Service',
          onTapItem: () {},
        ),
        SettingItem(
          title: 'Sign In',
          onTapItem: () {},
        ),
      ],
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(35)),
            ),
          ),
          const Text('Sign in your account',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500))
        ],
      ),
    );
  }
}

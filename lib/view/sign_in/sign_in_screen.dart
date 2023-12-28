import 'package:flutter/material.dart';
import 'package:my_shopping_app/components/custom_button.dart';
import 'package:my_shopping_app/components/custom_login_fb_gg.dart';

import 'components/text_input_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Đăng nhập tài khoản',
                      style:
                          TextStyle(fontSize: 24, fontStyle: FontStyle.italic)),
                  const SizedBox(height: 30),
                  const TextInputField(hintText: 'Nhập địa chỉ Email'),
                  const SizedBox(height: 10),
                  const TextInputField(
                      hintText: 'Nhập mật khẩu',
                      type: TextInputType.visiblePassword,
                      isPassword: true),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Quên mật khẩu',
                            style: TextStyle(
                                fontSize: 14,
                                fontStyle: FontStyle.italic,
                                color:
                                    const Color(0xff000000).withOpacity(0.6))),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  CustomButton(
                    title: 'ĐĂNG NHẬP',
                    onTap: () {},
                  ),
                  const SizedBox(height: 30),
                  const CustomLoginFbGg(title: 'Hoặc đăng nhập bằng'),
                  const SizedBox(height: 30),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text('Bạn chưa có tài khoản?'),
                    Padding(
                      padding: const EdgeInsets.only(left: 6),
                      child: GestureDetector(
                          onTap: () {},
                          child: Text('Đăng ký ngay',
                              style: TextStyle(
                                  decoration: TextDecoration.underline))),
                    )
                  ])
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}

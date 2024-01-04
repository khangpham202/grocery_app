import 'package:flutter/material.dart';
import 'package:my_shopping_app/components/custom_button.dart';
import 'package:my_shopping_app/components/custom_login_fb_gg.dart';
import 'package:my_shopping_app/components/text_input_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: LayoutBuilder(builder:
                  (BuildContext context, BoxConstraints viewportConstraints) {
                return SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: viewportConstraints.maxHeight,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Tạo tài khoản mới',
                            style: TextStyle(
                                fontSize: 24, fontStyle: FontStyle.italic)),
                        const SizedBox(height: 30),
                        const TextInputField(hintText: 'Nhập tên tài khoản'),
                        const TextInputField(hintText: 'Nhập địa chỉ email'),
                        const TextInputField(
                            hintText: 'Nhập mật khẩu',
                            type: TextInputType.visiblePassword,
                            isPassword: true),
                        const TextInputField(
                            hintText: 'Xác nhận mật khẩu',
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
                                      color: const Color(0xff000000)
                                          .withOpacity(0.6))),
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
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('Bạn chưa có tài khoản?'),
                              Padding(
                                padding: const EdgeInsets.only(left: 6),
                                child: GestureDetector(
                                    onTap: () {},
                                    child: const Text('Đăng ký ngay',
                                        style: TextStyle(
                                            decoration:
                                                TextDecoration.underline))),
                              )
                            ])
                      ],
                    ),
                  ),
                );
              }))),
    );
  }
}

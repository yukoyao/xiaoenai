library verify;

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:xiaoenai/app/features/auth/register/views/register_screen.dart';
import 'package:xiaoenai/app/shared_components/back_button.dart';

// controllers
part '../controllers/verify_controller.dart';

// bindings
part '../bindings/verify_binding.dart';

// components
part './components/verify_label.dart';

part './components/verify_phone_text.dart';

part './components/verify_code_text_field.dart';

part './components/resent_text_button.dart';

class VerifyScreen extends GetView<VerifyController> {
  const VerifyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        child: Column(
          children: [
            // 退后 AppBar
            const BackAppBar(),

            // 主体
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 36, right: 36),
              child: Column(
                children: [
                  // 请输入验证码 Label
                  const VerifyLabel(),

                  // 验证码发送至手机号码 Text
                  VerifyPhoneText(phone: controller.phone),

                  // 验证码输入框
                  VerifyCodeTextField(
                    num1Controller: controller.num1Controller,
                    num2Controller: controller.num2Controller,
                    num3Controller: controller.num3Controller,
                    num4Controller: controller.num4Controller,
                    focusNode1: controller.focusNode1,
                    focusNode2: controller.focusNode2,
                    focusNode3: controller.focusNode3,
                    focusNode4: controller.focusNode4,
                  ),

                  // 重新发送验证码及倒计时
                  ResentTextButton(
                    onResentTap: controller.onResentTap(),
                    remainingSecondsText: controller.remainingSecondsText,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

library login;

import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:xiaoenai/app/features/auth/verify/views/verify_screen.dart';
import 'package:get/get.dart';
import 'package:xiaoenai/app/constants/app_constants.dart';
import 'package:xiaoenai/app/shared_components/normal_dialog.dart';
import 'package:xiaoenai/app/shared_components/shark_animation.dart';

// binding
part '../bindings/login_binding.dart';

// controller
part '../controllers/login_controller.dart';

// formatters
part 'formatters/phone_input_formatter.dart';

// components
part './components/captcha_button.dart';
part './components/other_login_button.dart';
part './components/agree_checkbox.dart';
part './components/phone_label.dart';
part './components/phone_text_field.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100, left: 36, right: 36),
        child: Column(
          children: [
            // 手机号 Label
            const _PhoneLabel(),

            // 手机号码输入框
            _PhoneTextField(
              textEditingController: controller.textEditingController,
              phoneEditingController: controller.phoneEditingController,
            ),

            // 获取验证码按钮
            _CaptchaButton(
              isEnabled: controller.isEnable,
              isChecked: controller.isChecked,
              shakeAnimationKey: controller.shakeAnimationKey,
              phoneEditingController: controller.phoneEditingController,
            ),

            // 是否同意用户协议和隐私政策 checkbox
            _AgreeCheckBox(
                shakeAnimationKey: controller.shakeAnimationKey,
                isChecked: controller.isChecked,
                onAgreeCheckboxChanged: controller.onAgreeCheckBoxChange),

            // 其他登录按钮
            const _OtherLoginButton(),
          ],
        ),
      ),
    );
  }
}

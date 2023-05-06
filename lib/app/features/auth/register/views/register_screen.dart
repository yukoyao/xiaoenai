library register;

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:english_words/english_words.dart';
import 'package:xiaoenai/app/constants/app_constants.dart';
import 'package:xiaoenai/app/features/index/views/home_screen.dart';

// controllers
part '../controllers/register_controller.dart';

// bindings
part '../bindings/register_binding.dart';

// components
part './components/avatar_picker.dart';
part './components/register_label.dart';
part './components/nickname_text_field.dart';
part './components/sex_checkbox.dart';
part './components/password_text_field.dart';
part './components/invite_code_text_field.dart';
part './components/register_button.dart';

class RegisterScreen extends GetView<RegisterController> {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        child: Container(
          padding: const EdgeInsets.only(top: 20, left: 36, right: 36),
          child: ListView(
            children: [
              Column(
                children: [
                  // 注册信息 Label
                  const RegisterLabel(),
                  // 头像上传
                  AvatarPicker(manSelect: controller.manSelected, imageFile: controller.imageFile),

                  // 昵称输入框
                  NicknameTextField(textEditingController: controller.nickNameEditingController),

                  // 性别选项
                  SexCheckbox(womenSelected: controller.womenSelected, manSelected: controller.manSelected),

                  // 密码输入框
                  const PasswordTextField(),

                  // 邀请码输入框
                  const InviteCodeTextField(),

                  // 完成按钮
                  const RegisterButton(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


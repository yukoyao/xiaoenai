library nickname_update;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xiaoenai/app/constants/app_constants.dart';
import 'package:xiaoenai/app/features/index/profile/detail/views/profile_detail_screen.dart';
import 'package:xiaoenai/app/shared_components/appbar_with_back.dart';

// controllers
part '../controllers/nickname_update_controller.dart';

// bindings
part '../bindings/nickname_update_binding.dart';

// components
part './components/nickname_text_field.dart';
part './components/save_button.dart';

class NicknameUpdateScreen extends GetView<NicknameUpdateController> {
  const NicknameUpdateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0, // 设置阴影高度为0，去除底部分割线
        flexibleSpace: const AppbarWithBack(
          title: '昵称',
          backUrl: '/profile_detail',
        ),
      ),
      body: Column(
        children: [
          // 昵称输入框
          NicknameTextField(
            textEditingController: controller.textEditingController,
            focusNode: controller.focusNode,
          ),

          // 保存按钮
          SaveButton( textEditingController: controller.textEditingController, nickname: controller.nickname,),
        ],
      ),
    );
  }

}

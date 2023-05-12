library profile_detail;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xiaoenai/app/constants/app_constants.dart';
import 'package:xiaoenai/app/shared_components/appbar_with_back.dart';
import 'package:xiaoenai/app/shared_components/image_display_screen.dart';

// controllers
part '../controllers/profile_detail_controller.dart';

// bindings
part '../bindings/profile_detail_binding.dart';

// components
part './components/avatar_item.dart';
part './components/nickname_item.dart';
part './components/sex_item.dart';
part './components/code_item.dart';


class ProfileDetailScreen extends GetView<ProfileDetailController> {
  const ProfileDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0, // 设置阴影高度为0，去除底部分割线
        flexibleSpace: const AppbarWithBack(title: '个人信息', backUrl: '/profile',),
      ),
      body: Column(
        children:  [
          // 头像栏
          const AvatarItem(),

          // 昵称栏
          NicknameItem(nickname: controller.nickname,),

          // 性别栏
          SexItem(sex: controller.sex,),

          // 恩爱号栏
          const CodeItem(),
        ],
      ),
    );
  }
}

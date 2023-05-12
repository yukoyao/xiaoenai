library profile;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:xiaoenai/app/constants/app_constants.dart';

// controllers
part '../controllers/profile_controller.dart';

// bindings
part '../bindings/profile_binding.dart';

// components
part './components/profile_title.dart';

part './components/person_info.dart';

part './components/other_services.dart';

part './components/three_party_services.dart';

class ProfileScreen extends GetView<ProfileController> {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(top: 24, left: 4, right: 4),
        children: [
          Column(
            children: [
              // 标题
              ProfileTitle(
                onSettingPressed: controller.onSettingPressed,
              ),

              // 个人信息
              PersonInfo(),

              // 其他服务
              const OtherServices(),

              // 分界线
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                height: 1.0,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),

              // 三方服务
              const ThreePartyServices(),
            ],
          ),
        ],
      ),
    );
  }
}

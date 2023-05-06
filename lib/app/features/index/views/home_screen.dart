library home;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marquee/marquee.dart';
import 'package:xiaoenai/app/constants/app_constants.dart';

// controllers
part '../controllers/home_controller.dart';

// bindings
part '../bindings/home_binding.dart';

// components
part './components/unbound_status_text.dart';
part './components/home_bottom_navigation_bar.dart';
part './components/home_marquee.dart';
part './components/home_grid_view.dart';
part './components/unbound_remaining_time_text.dart';
part './components/mine_code_text.dart';
part './components/bind_code_text_field.dart';
part './components/invite_download_button.dart';
part './components/full_functionality_tip_text.dart';

class HomeScreen extends GetView<HomeController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: HomeBottomNavigationBar(
        currentIndex: controller.currentIndex,
        onTabTapped: controller.onTabTapped,
      ),
      body: Material(
        child: ListView(
          children: const [
            // 顶部状态文字 - 未绑定状态下
            UnboundStatusText(),

            // 剩余时间
            UnboundRemainingTimeText(),

            // 我的真爱码
           MineCodeText(),

            // 真爱码输入框
            BindCodeTextField(),

            // 邀请对方下载
            InviteDownloadButton(),

            // 完整功能提示文字
            FullFunctionalityTipText(),

            // 分类导航栏
            HomeGridView(),
          ],
        ),
      ),
    );
  }
}

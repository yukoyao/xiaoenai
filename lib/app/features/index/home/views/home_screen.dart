library home;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
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
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        child: Stack(
          children: [
            ListView(
              children: [
                // 顶部状态文字 - 未绑定状态下
                const UnboundStatusText(),

                // 剩余时间
                const UnboundRemainingTimeText(),

                // 我的真爱码
                const MineCodeText(),

                // 真爱码输入框
                const BindCodeTextField(),

                // 邀请对方下载
                const InviteDownloadButton(),

                // 完整功能提示文字
                const FullFunctionalityTipText(),

                // 分类导航栏
                const HomeGridView(),

                // 占位区域
                SizedBox(
                  height:
                      MediaQuery.of(context).size.height * 0.25, // 动态计算占位区域的高度
                ),

                // 底部公告栏
                HomeMarquee(
                  msgList: controller.winnerMsgList,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

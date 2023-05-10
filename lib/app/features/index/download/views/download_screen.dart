library download;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xiaoenai/app/constants/app_constants.dart';

// controllers
part '../controllers/download_controller.dart';

// bindings
part '../bindings/download_binding.dart';

// components
part './components/dl_title.dart';
part './components/dl_sub_title.dart';
part './components/dl_desc.dart';
part './components/dl_button.dart';

class DownloadScreen extends GetView<DownloadController> {
  const DownloadScreen({super.key});


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(ImageRasterPath.bgWuCai),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            children: [

              // 标题
              const DLTitle(),

              // 子标题
              const DLSubTitle(),

              // 图片及说明
              const DLDesc(),

              // 下载按钮
              DLButton(onBtnPressed: controller.onBtnPressed()),
            ],
          ),
        ),
      ),
    );
  }

}
import 'package:flutter/material.dart';
import 'package:xiaoenai/app/shared_components/appbar_with_back.dart';

class ImageDisplayScreen extends StatelessWidget {
  const ImageDisplayScreen(
      {Key? key, required this.imageUrl, required this.backUrl})
      : super(key: key);

  final String imageUrl;
  final String backUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0, // 设置阴影高度为0，去除底部分割线
        flexibleSpace: AppbarWithBack(
          title: '头像',
          backUrl: backUrl,
        ),
      ),
      body: Center(
        child: Image.asset(imageUrl),
      ),
    );
  }
}

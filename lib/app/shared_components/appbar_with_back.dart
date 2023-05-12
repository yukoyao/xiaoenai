import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppbarWithBack extends StatelessWidget {
  const AppbarWithBack({Key? key, required this.title, required this.backUrl}) : super(key: key);

  final String title;
  final String backUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.centerLeft,
              child: IconButton(
                iconSize: 19,
                color: Colors.black,
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Get.toNamed(backUrl);
                },
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              title,
              textAlign: TextAlign.start,
              style: const TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class NormalDialog extends Dialog {
  final String msg;
  final String icon;

  const NormalDialog({super.key, required this.icon, required this.msg});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      /* onTap: () {
        Navigator.pop(context);
      },*/
      child: Center(
        child: Container(
          width: 170,
          height: 135,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: const Color.fromRGBO(0, 0, 0, 0.7)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(icon, width: 50, height: 50),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 14),
                child: Text(msg,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.white, fontSize: 14)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

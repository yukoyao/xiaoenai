part of login;

class _CaptchaButton extends StatelessWidget {
  const _CaptchaButton(
      {Key? key,
      required this.isEnabled,
      required this.isChecked,
      required this.shakeAnimationKey,
      required this.phoneEditingController})
      : super(key: key);

  final RxBool isEnabled;
  final RxBool? isChecked;
  final shakeAnimationKey;
  final TextEditingController phoneEditingController;
  static bool _isDialogShowing = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Obx(
          () => Expanded(
            child: Container(
              height: 50,
              padding: const EdgeInsets.only(top: 12),
              child: GestureDetector(
                onTap: () {
                  EasyDebounce.debounce(
                      'debounce01', const Duration(milliseconds: 500), () {
                    if (!isChecked!.value) {
                      if (!_isDialogShowing) {
                        _isDialogShowing = true;
                        showDialog(
                          context: context,
                          barrierColor: Colors.transparent,
                          builder: (context) {
                            return const NormalDialog(
                              icon: ImageRasterPath.icLimitToastError,
                              msg: "请先阅读并同意\n用户协议和隐私政策",
                            );
                          },
                        );
                        // 给 checkbox 和用户协议添加动画效果
                        final ShakeAnimationState? shakeAnimationState =
                            shakeAnimationKey.currentState;
                        shakeAnimationState?.startAnimation();
                        _isDialogShowing = false;
                      }
                    }
                    if (isEnabled.value && isChecked!.value) {
                      Get.toNamed(
                        '/verify',
                        arguments: {
                          'phone': phoneEditingController.text
                              .replaceAll(RegExp(r'[^0-9]'), '')
                        },
                      );
                    }
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    gradient: isEnabled.value
                        ? const LinearGradient(colors: [
                            Color.fromRGBO(253, 75, 128, 1),
                            Color.fromRGBO(253, 100, 91, 1),
                          ])
                        : null,
                    borderRadius: BorderRadius.circular(kBorderRadius),
                    color: isEnabled.value
                        ? null
                        : const Color.fromRGBO(215, 216, 217, 1),
                  ),
                  child: const Center(
                    child: Text(
                      '获取验证码',
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

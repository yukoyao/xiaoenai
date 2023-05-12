part of profile;

class ProfileTitle extends StatelessWidget {
  const ProfileTitle({Key? key, required this.onSettingPressed}) : super(key: key);

  final Function() onSettingPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
              children: [
                WidgetSpan(
                  child: SizedBox(
                    width: 40,
                  ),
                ),
                TextSpan(
                  text: '我',
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ),
        IconButton(
          onPressed: onSettingPressed,
          icon: Image.asset(
            ImageRasterPath.iconSettingsMenu,
            width: 22,
            height: 22,
          ),
        ),
      ],
    );
  }
}

part of login;

class PhoneInputFormatter extends TextInputFormatter {
  static var beforeLength = 0;

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.isEmpty) {
      return newValue.copyWith(text: '');
    }
    String value = newValue.text;
    // 判断前进还是后退
    if (beforeLength < newValue.text.length) {
      value = newValue.text.replaceAll(RegExp(r'[^0-9]'), '');
      if (value.length >= 4 && value.length < 7) {
        value = '${value.substring(0, 3)} ${value.substring(3)}';
      } else if (value.length >= 7) {
        value =
        '${value.substring(0, 3)} ${value.substring(3, 7)} ${value.substring(7)}';
      }
    }

    beforeLength = value.length;

    return newValue.copyWith(
      text: value,
      selection: TextSelection.collapsed(offset: value.length),
    );
  }
}
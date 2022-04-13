

class Validator {
  String? validateHangle(String? value) {
    const pattern = r'[\uac00-\ud7af]';
    final regExp = RegExp(pattern,unicode: true);
    if (value == null) {
      return null;
    }
    if (value.isEmpty) {
      return "내용을 입력해주세요.";
    } else if (!regExp.hasMatch(value.trim())) {
      return "완성형 한글로 입력해주세요.";
    }
    return null;
  }
  String? validate6DigitCode(String? value) {
    const pattern = r'(^[0-9]*$)';
    final regExp = RegExp(pattern);
    if (value == null) {
      return null;
    }
    if (value.isEmpty) {
      return "시간을 입력해주세요.";
    } else if (value.length != 6) {
      return "시간 ex) 대로 입력해주세요.";
    } else if (!regExp.hasMatch(value)) {
      return "시간을 양식을 지켜주세요";
    }
    return null;
  }
}

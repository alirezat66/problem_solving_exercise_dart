class PhoneNumber {
  String clean(String phoneNumber) {
    phoneNumber = phoneNumber.trim();
    List<String> strPhone = phoneNumber.split('');
    String finalPhone = strPhone.fold(
        '',
        (finalPhone, element) =>
            isNumeric(element) ? (finalPhone + element) : finalPhone);
    print(finalPhone);
    if (finalPhone.length < 10) {
      throw new FormatException('incorrect number of digits');
    } else if (finalPhone.length == 11 && !finalPhone.startsWith('1')) {
      throw new FormatException('11 digits must start with 1');
    } else if (finalPhone.length == 11 && finalPhone.startsWith('1')) {
      return finalPhone.substring(1);
    }
    return finalPhone;
  }

  bool isNumeric(String s) {
    if (s == null) {
      return false;
    }
    return double.tryParse(s) != null;
  }
}

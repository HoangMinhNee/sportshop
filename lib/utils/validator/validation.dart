class MValidator {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email không được để trống.';
    }

    // Kiem tra dinh dang email
    final emailRegExp = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

    if (!emailRegExp.hasMatch(value)) {
      return 'Email không hợp lệ.';
    }

    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password không được để trống.';
    }

    // Kiem tra do dai password
    if (value.length < 6) {
      return 'Password phải có ít nhất 6 kí tự.';
    }
    // Password phai co chu cai viet hoa
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Password phải có ít nhất 1 chữ cái viết hoa.';
    }
    // Password phai co number
    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Password phải có ít nhất 1 chữ số.';
    }
    // Password phai co ki tu dac biet
    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return 'Password phải có ít nhất 1 kí tự đặc biệt.';
    }

    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'SĐT không được để trống';
    }

    // Kiem tra dinh dang sdt
    final phoneRegExp = RegExp(r'^\d{10}$');

    if (!phoneRegExp.hasMatch(value)) {
      return 'Sai định dạng SĐT (ít nhất 10 chữ số).';
    }

    return null;
  }
}

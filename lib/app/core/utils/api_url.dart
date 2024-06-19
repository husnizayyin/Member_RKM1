class ApiUrl {
  static const String baseUrl = 'http://10.1.0.84:8080/api';
  static const String baseStorageUrl = 'http://10.1.0.84:8080/storage';
  // static const String baseUrl = 'https://member.rkm.co.id/api';
  // static const String baseStorageUrl = 'https://member.rkm.co.id/storage';
  static EndPoint endPoint = EndPoint();
  static StorageUrl storageUrl = StorageUrl();
}

class EndPoint {
  static const String fcmToken = '/fcm_token';
  static const String login = '/login';
  static const String register = '/register';
  static const String sendVerifyOtp = '/register/verify/send';
  static const String verifyOtpWhatsapp = '/register/verify/wa';
  static const String identifyForgotPassword = '/password/reset/identify';
  static const String sendForgotPassword = '/password/reset/send';
  static const String verifyOtpForgotPassword = '/password/reset/wa';
  static const String resetPassword = '/password/reset';
  static const String logout = '/logout';

  // static const String login = '/login';
  // static const String register = '/register';
  // static const String verify = '/register/verify/send';
  // static const String verifyWa = '/register/verify/wa';
  // static const String identifyAccount = '/identify';
  // static const String sendForgotPassword = '/send-forgot-password';
  // static const String logout = '/logout';

  static const String profile = '/profile';
  // diganti profile
  static const String account = '/profile';
  static const String content = '/content';
  static const String store = '/store';

  static const shoppingHistory = '/account/shoping';

  static const String village = '/location';
  static const String editProfile = '/account/update';
  static const String changePassword = '/account/password/update';
  static const String pinUpdate = '/account/pin/update';
  static const String pinCheck = '/account/pin/check';

  // static const String forgotPinSendType = '/account/pin/send';
  static const String forgotPinVerifyOtp = '/account/pin/wa';
  //static const String resetPin = '/account/pin/reset';

  //update
  static const String sendOtp = '/account/pin/send';
  static const String verifyOtp = '/account/pin/wa';
  static const String resetPin = '/account/pin/reset';

  static const String sendOtpDeleteAccount = '/account/delete/send-otp';
  static const String deleteAccount = '/account/delete';

  //redeem point
  static const String prizeList = '/point/prize_list';
}

class StorageUrl {
  static const String qr = '/qr/members';
}

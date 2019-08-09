class CodedException implements Exception {
  final int code;

  CodedException({this.code});

  static const int FACEBOOK_AUTH_ERROR = 1;
  static const int FACEBOOK_AUTH_CANCELED = 2;
  static const int GOOGLE_AUTH_ERROR = 3;
  static const int EMAIL_AUTH_ERROR = 4;

  static const String FACEBOOK_AUTH_ERROR_MESSAGE =
      "Facebook authentication error";
  static const String FACEBOOK_AUTH_CANCELED_MESSAGE =
      "Facebook authentication canceled by user";
  static const String GOOGLE_AUTH_ERROR_MESSAGE = "Google authentication error";
  static const String EMAIL_AUTH_ERROR_MESSAGE = "Email authentication error";
  static const String DEFAULT_MESSAGE = "Unknown Code";

  String errorMessage() {
    switch (code) {
      case FACEBOOK_AUTH_CANCELED:
        return FACEBOOK_AUTH_CANCELED_MESSAGE;
        break;
      case FACEBOOK_AUTH_ERROR:
        return FACEBOOK_AUTH_ERROR_MESSAGE;
        break;
      case GOOGLE_AUTH_ERROR:
        return GOOGLE_AUTH_ERROR_MESSAGE;
        break;
      case EMAIL_AUTH_ERROR:
        return EMAIL_AUTH_ERROR_MESSAGE;
        break;
      default:
        return DEFAULT_MESSAGE;
    }
  }
}

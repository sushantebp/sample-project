abstract class AppException implements Exception {
  final String message;
  const AppException([this.message = 'An unknown error occurred']);
}

class LoginException extends AppException {
  const LoginException([super.message = 'Login failed']);
}

class AccessTokenException extends AppException {
  const AccessTokenException([super.message = "Error fetching access token"]);
}

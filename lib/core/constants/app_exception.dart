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

class UnauthorizedException extends AppException {
  const UnauthorizedException([super.message = "Unauthorized access"]);
}

class BadRequestException extends AppException {
  const BadRequestException([super.message = "Bad request"]);
}

class ServerException extends AppException {
  const ServerException([super.message = "Server error"]);
}

class NetworkException extends AppException {
  const NetworkException([
    super.message = "Network error. Please check your internet connection",
  ]);
}

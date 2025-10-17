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
  const BadRequestException([super.message = "Invalid credentials"]);
}

class ServerException extends AppException {
  const ServerException([super.message = "Server error"]);
}

class NetworkException extends AppException {
  const NetworkException([
    super.message = "Network error. Please check your internet connection",
  ]);
}

class UserFetchException extends AppException {
  const UserFetchException([super.message = "Error fetching user details"]);
}


class UnknownnException extends AppException {
  const UnknownnException([super.message = "Unexpected error."]);
}

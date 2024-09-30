class AppExceptions implements Exception {
  final String? _message;
  final String? _prefix;

  AppExceptions([this._message, this._prefix]);

  @override
  String toString() {
    if (_message == null || _message.isEmpty) {
      return '$_prefix';
    }
    return '$_prefix$_message';
  }
}

class InternetException extends AppExceptions {
  InternetException([String? message]) : super(message, 'No Internet: ');
}

class RequestTimeoutException extends AppExceptions {
  RequestTimeoutException([String? message])
      : super(message, 'Request Timeout: ');
}

class InvalidUrlException extends AppExceptions {
  InvalidUrlException([String? message]) : super(message, 'Invalid URL: ');
}

class FetchDataException extends AppExceptions {
  FetchDataException([String? message])
      : super(message, 'Error While Communicating: ');
}

class ServerException extends AppExceptions {
  ServerException([String? message])
      : super(message, 'Internal Server Error: ');
}

class EmptyResponseException implements Exception {
  final String message = 'EmptyResponseException';
  EmptyResponseException();

  @override
  String toString() => message;
}

class ServerResponseException implements Exception {
  final String message = 'ServerResponseException';
  ServerResponseException();

  @override
  String toString() => message;
}
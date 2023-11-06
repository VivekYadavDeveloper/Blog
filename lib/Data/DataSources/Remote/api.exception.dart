class ApiException implements Exception {
  final dynamic message;

  ApiException({this.message});

  @override
  String toString() {
    if (message is String) {
      return message;
    }
    return "Error Occurred";
    return super.toString();
  }
}
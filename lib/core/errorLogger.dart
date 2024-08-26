import 'package:dio/dio.dart';

class ParseErrorLogger {
  void logError(Object error, StackTrace stackTrace, RequestOptions options) {
    // Implement your error logging logic here
    // You can print to console, write to a file, etc.
    print('Error: $error');
    print('Stacktrace: $stackTrace');
    print('Options: $options');
  }
}

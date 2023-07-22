import 'package:dio/dio.dart';

import '../error/error_response.dart';

class CommonException {
  const CommonException();

  static ErrorResponse setError(error) {
    if (error is Exception) {
      if (error.runtimeType == DioException) {
        final dioError = error as DioException;
        final code = dioError.response?.statusCode.toString() ?? '9999';

        return ErrorResponse(
          status: 'network error',
          code: code,
          message: '접속하신 네트워크 환경이 불안정합니다. \n 잠시 후에 다시 시도해주세요.',
        );
      } else {
        final String errorCode = '8888';

        return ErrorResponse(
          status: 'unExpected error',
          code: errorCode,
          message: '서비스에 일시적인 오류가 발생했습니다.\n 잠시 후에 다시 시도해주세요.',
        );
      }
    } else {
      final String errorCode = '7777';

      return ErrorResponse(
        status: 'unKnown error',
        code: errorCode,
        message: '서비스에 일시적인 오류가 발생했습니다. 잠시 후에 다시 시도해주세요.',
      );
    }
  }
}

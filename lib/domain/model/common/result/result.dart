import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/utils/error/error_response.dart';

part 'result.freezed.dart';

@freezed
class Result<T> with _$Result<T> {
  const factory Result.success(T data) = Success;

  const factory Result.failure(ErrorResponse error) = Error;
}

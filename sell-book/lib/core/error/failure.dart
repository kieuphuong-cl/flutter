import 'package:brainiaccommerce2/core/error/exception.dart';

abstract class Failure {}

class ServerFailure extends Failure {}

class AuthorizationFailure extends Failure {}

class ForbiddenFailure extends Failure {}

class BadRequestFailure extends Failure {}

class DataParsingFailure extends Failure {}

Failure convertExceptionToFailure(Object exception) {
  if (exception is ServerException) return ServerFailure();
  if (exception is AuthorizationException) return AuthorizationFailure();
  if (exception is ForbiddenException) return ForbiddenFailure();
  if (exception is BadRequestException) return BadRequestFailure();
  return DataParsingFailure();
}

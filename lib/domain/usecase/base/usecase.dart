import '../../repository/repository.dart';

abstract class Usecase<T extends Repository> {
  Future call(T repository);
}

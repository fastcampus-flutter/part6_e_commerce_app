import 'package:injectable/injectable.dart';

import '../../domain/repository/use.repository.dart';

@Singleton(as: UserRepository)
class UserRepositoryImpl implements UserRepository {}

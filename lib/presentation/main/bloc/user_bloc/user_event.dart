part of 'user_bloc.dart';

abstract class UserEvent {
  const UserEvent();
}

class UserLogin extends UserEvent {}

class UserLogout extends UserEvent {}

class UserLoginWithToken extends UserEvent {}

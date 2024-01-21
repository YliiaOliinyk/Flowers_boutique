part of 'autorization_bloc.dart';

sealed class AutorizationEvent {
  const AutorizationEvent();
}

class EmailChanged extends AutorizationEvent {
  final String email;

  const EmailChanged(this.email);
}

class PasswordChanged extends AutorizationEvent {
  final String password;

  const PasswordChanged(this.password);
}

class ObscureChanged extends AutorizationEvent {
  const ObscureChanged();
}
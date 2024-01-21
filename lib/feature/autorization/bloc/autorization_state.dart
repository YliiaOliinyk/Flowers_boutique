part of 'autorization_bloc.dart';

class AutorizationState {
  final String email;
  final String password;

  final String? emailError;
  final String? passwordError;
  

  final bool buttonDisabled;
  final bool isObscured;

  bool get isValid => emailError == null && passwordError == null;
  bool get allFieldEntered => email.isNotEmpty && password.isNotEmpty;

  AutorizationState({
    required this.email,
    required this.password,
    this.emailError,
    this.passwordError,
    this.buttonDisabled = true,
    this.isObscured = true,
  });

  AutorizationState copyWith({
    String? email,
    String? password,
    String? emailError,
    String? passwordError,
    bool? buttonDisabled,
    bool? isObscured,
  }) {
    return AutorizationState(
      email: email ?? this.email,
      password: password ?? this.password,
      emailError: emailError,
      passwordError: passwordError,
      buttonDisabled: buttonDisabled ?? this.buttonDisabled,
      isObscured: isObscured ?? this.isObscured,
    );
  }
}

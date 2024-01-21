

import 'package:flutter_bloc/flutter_bloc.dart';

part 'autorization_event.dart';
part 'autorization_state.dart';

class AutorizationBloc extends Bloc<AutorizationEvent, AutorizationState> {
  AutorizationBloc() : super(AutorizationState(email: '', password: '')) {
    on<EmailChanged>((event, emit) {
      RegExp regex = RegExp(
        r'^[a-zA-Z0-9._]+@[a-zA-Z0-9]+\.[a-zA-Z]+',
      );
      final emailValided = regex.hasMatch(event.email);
      if (emailValided) {
        emit(state.copyWith(
          email: event.email,
          password: state.password,
          emailError: null,
          passwordError: state.passwordError,
        ));
        emit(
          state.copyWith(
            passwordError: state.passwordError,
            buttonDisabled: !(state.isValid && state.allFieldEntered),
          ),
        );
      } else {
        emit(state.copyWith(
          email: event.email,
          password: state.password,
          emailError: 'Email is not valid',
          passwordError: state.passwordError,
          buttonDisabled: true,
        ));
      }
    });
    on<PasswordChanged>((event, emit) {
      if (event.password.length >= 6) {
        emit(state.copyWith(
          email: state.email,
          password: event.password,
          passwordError: null,
          emailError: state.emailError,
        ));
        emit(
          state.copyWith(
            emailError: state.emailError,
            buttonDisabled: !(state.isValid && state.allFieldEntered),
          ),
        );
      } else {
        emit(state.copyWith(
          email: state.email,
          password: event.password,
          passwordError: 'Password is not valid',
          emailError: state.emailError,
          buttonDisabled: true,
        ));
      }
    });
    on<ObscureChanged>((event, emit) {
      emit(state.copyWith(
        isObscured: !state.isObscured,
        emailError: state.emailError,
        passwordError: state.passwordError,
    ));
    });
  }
}

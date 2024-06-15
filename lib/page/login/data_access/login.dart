import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login.freezed.dart';
part 'login.g.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default('') String username,
    @Default('') String password,
  }) = _LoginState;
}

@riverpod
class Login extends _$Login {
  @override
  LoginState build() {
    return const LoginState();
  }

  void updateUsername(String value) {
    state = state.copyWith(username: value);
  }

  void updatePassword(String value) {
    state = state.copyWith(password: value);
  }
}

@riverpod
class AuthService extends _$AuthService {
  @override
  FutureOr<void> build() {}

  Future<bool> login() async {
    final loginForm = ref.watch(loginProvider);

    const predefinedEmail = 'candidate@deptechdigital.com';
    const predefinedPassword = 'testInterview123!';

    if (loginForm.username == predefinedEmail &&
        loginForm.password == predefinedPassword) {
      // Login berhasil
      ref.invalidate(loginProvider);
      print('set');
      return true;
    } else {
      print(loginForm.username);
      return false;
    }
  }
}

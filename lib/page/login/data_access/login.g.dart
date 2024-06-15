// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$loginHash() => r'a264c8e2e1eaae9dae1d0b451dba5921c35758c1';

/// See also [Login].
@ProviderFor(Login)
final loginProvider = AutoDisposeNotifierProvider<Login, LoginState>.internal(
  Login.new,
  name: r'loginProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$loginHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Login = AutoDisposeNotifier<LoginState>;
String _$authServiceHash() => r'86ae49417cb626e7c52442706f230b81e503973b';

/// See also [AuthService].
@ProviderFor(AuthService)
final authServiceProvider =
    AutoDisposeAsyncNotifierProvider<AuthService, void>.internal(
  AuthService.new,
  name: r'authServiceProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$authServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AuthService = AutoDisposeAsyncNotifier<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter

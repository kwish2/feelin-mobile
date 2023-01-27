part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.submitted() = _Submitted;
  const factory AuthEvent.deleteAccount() = _DeleteAccount;
}

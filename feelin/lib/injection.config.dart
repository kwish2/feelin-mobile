// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/sign_in/sign_in_form/sign_in_form_bloc.dart' as _i11;
import 'application/auth/sign_up/email_auth_form/email_auth_form_bloc.dart'
    as _i15;
import 'application/auth/sign_up/sign_up_form/sign_up_form_bloc.dart' as _i12;
import 'application/edit/edit_post_form/edit_post_form_bloc.dart' as _i13;
import 'application/edit/edit_profile_form/edit_profile_form_bloc.dart' as _i14;
import 'application/info/playlist_info_bloc.dart' as _i6;
import 'application/post/post_detail_form/post_detail_form_bloc.dart' as _i16;
import 'application/post/post_form/post_form_bloc.dart' as _i8;
import 'application/profile/profile_bloc.dart' as _i17;
import 'domain/auth/i_auth_repository.dart' as _i4;
import 'infrastructure/auth/auth_repository.dart' as _i5;
import 'infrastructure/explore/explore_post_repository.dart' as _i3;
import 'infrastructure/post/playlist_repository.dart' as _i7;
import 'infrastructure/post/post_repository.dart' as _i9;
import 'infrastructure/profile/profile_repository.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.ExplorePostRepository>(
      () => _i3.ExplorePostRepository());
  gh.lazySingleton<_i4.IAuthRepository>(() => _i5.AuthRepository());
  gh.factory<_i6.PlaylistInfoBloc>(
      () => _i6.PlaylistInfoBloc(get<_i3.ExplorePostRepository>()));
  gh.lazySingleton<_i7.PlaylistRepository>(() => _i7.PlaylistRepository());
  gh.factory<_i8.PostFormBloc>(
      () => _i8.PostFormBloc(get<_i7.PlaylistRepository>()));
  gh.lazySingleton<_i9.PostRepository>(() => _i9.PostRepository());
  gh.lazySingleton<_i10.ProfileRepository>(() => _i10.ProfileRepository());
  gh.factory<_i11.SignInFormBloc>(
      () => _i11.SignInFormBloc(get<_i4.IAuthRepository>()));
  gh.factory<_i12.SignUpFormBloc>(
      () => _i12.SignUpFormBloc(get<_i4.IAuthRepository>()));
  gh.factory<_i13.EditPostFormBloc>(
      () => _i13.EditPostFormBloc(get<_i9.PostRepository>()));
  gh.factory<_i14.EditProfileFormBloc>(
      () => _i14.EditProfileFormBloc(get<_i10.ProfileRepository>()));
  gh.factory<_i15.EmailAuthFormBloc>(
      () => _i15.EmailAuthFormBloc(get<_i4.IAuthRepository>()));
  gh.factory<_i16.PostDetailFormBloc>(
      () => _i16.PostDetailFormBloc(get<_i9.PostRepository>()));
  gh.factory<_i17.ProfileBloc>(
      () => _i17.ProfileBloc(get<_i10.ProfileRepository>()));
  return get;
}

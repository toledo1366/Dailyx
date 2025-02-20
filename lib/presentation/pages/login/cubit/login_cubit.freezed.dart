// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() askForLogIn,
    required TResult Function() failed,
    required TResult Function() loggedBackground,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? askForLogIn,
    TResult? Function()? failed,
    TResult? Function()? loggedBackground,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? askForLogIn,
    TResult Function()? failed,
    TResult Function()? loggedBackground,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_AskForLogIn value) askForLogIn,
    required TResult Function(_Failed value) failed,
    required TResult Function(_LoggedBackground value) loggedBackground,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AskForLogIn value)? askForLogIn,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_LoggedBackground value)? loggedBackground,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_AskForLogIn value)? askForLogIn,
    TResult Function(_Failed value)? failed,
    TResult Function(_LoggedBackground value)? loggedBackground,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'LoginState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() askForLogIn,
    required TResult Function() failed,
    required TResult Function() loggedBackground,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? askForLogIn,
    TResult? Function()? failed,
    TResult? Function()? loggedBackground,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? askForLogIn,
    TResult Function()? failed,
    TResult Function()? loggedBackground,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_AskForLogIn value) askForLogIn,
    required TResult Function(_Failed value) failed,
    required TResult Function(_LoggedBackground value) loggedBackground,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AskForLogIn value)? askForLogIn,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_LoggedBackground value)? loggedBackground,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_AskForLogIn value)? askForLogIn,
    TResult Function(_Failed value)? failed,
    TResult Function(_LoggedBackground value)? loggedBackground,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements LoginState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$AskForLogInImplCopyWith<$Res> {
  factory _$$AskForLogInImplCopyWith(
          _$AskForLogInImpl value, $Res Function(_$AskForLogInImpl) then) =
      __$$AskForLogInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AskForLogInImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$AskForLogInImpl>
    implements _$$AskForLogInImplCopyWith<$Res> {
  __$$AskForLogInImplCopyWithImpl(
      _$AskForLogInImpl _value, $Res Function(_$AskForLogInImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AskForLogInImpl implements _AskForLogIn {
  const _$AskForLogInImpl();

  @override
  String toString() {
    return 'LoginState.askForLogIn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AskForLogInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() askForLogIn,
    required TResult Function() failed,
    required TResult Function() loggedBackground,
  }) {
    return askForLogIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? askForLogIn,
    TResult? Function()? failed,
    TResult? Function()? loggedBackground,
  }) {
    return askForLogIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? askForLogIn,
    TResult Function()? failed,
    TResult Function()? loggedBackground,
    required TResult orElse(),
  }) {
    if (askForLogIn != null) {
      return askForLogIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_AskForLogIn value) askForLogIn,
    required TResult Function(_Failed value) failed,
    required TResult Function(_LoggedBackground value) loggedBackground,
  }) {
    return askForLogIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AskForLogIn value)? askForLogIn,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_LoggedBackground value)? loggedBackground,
  }) {
    return askForLogIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_AskForLogIn value)? askForLogIn,
    TResult Function(_Failed value)? failed,
    TResult Function(_LoggedBackground value)? loggedBackground,
    required TResult orElse(),
  }) {
    if (askForLogIn != null) {
      return askForLogIn(this);
    }
    return orElse();
  }
}

abstract class _AskForLogIn implements LoginState {
  const factory _AskForLogIn() = _$AskForLogInImpl;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FailedImpl implements _Failed {
  const _$FailedImpl();

  @override
  String toString() {
    return 'LoginState.failed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() askForLogIn,
    required TResult Function() failed,
    required TResult Function() loggedBackground,
  }) {
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? askForLogIn,
    TResult? Function()? failed,
    TResult? Function()? loggedBackground,
  }) {
    return failed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? askForLogIn,
    TResult Function()? failed,
    TResult Function()? loggedBackground,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_AskForLogIn value) askForLogIn,
    required TResult Function(_Failed value) failed,
    required TResult Function(_LoggedBackground value) loggedBackground,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AskForLogIn value)? askForLogIn,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_LoggedBackground value)? loggedBackground,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_AskForLogIn value)? askForLogIn,
    TResult Function(_Failed value)? failed,
    TResult Function(_LoggedBackground value)? loggedBackground,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements LoginState {
  const factory _Failed() = _$FailedImpl;
}

/// @nodoc
abstract class _$$LoggedBackgroundImplCopyWith<$Res> {
  factory _$$LoggedBackgroundImplCopyWith(_$LoggedBackgroundImpl value,
          $Res Function(_$LoggedBackgroundImpl) then) =
      __$$LoggedBackgroundImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoggedBackgroundImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoggedBackgroundImpl>
    implements _$$LoggedBackgroundImplCopyWith<$Res> {
  __$$LoggedBackgroundImplCopyWithImpl(_$LoggedBackgroundImpl _value,
      $Res Function(_$LoggedBackgroundImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoggedBackgroundImpl implements _LoggedBackground {
  const _$LoggedBackgroundImpl();

  @override
  String toString() {
    return 'LoginState.loggedBackground()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoggedBackgroundImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() askForLogIn,
    required TResult Function() failed,
    required TResult Function() loggedBackground,
  }) {
    return loggedBackground();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? askForLogIn,
    TResult? Function()? failed,
    TResult? Function()? loggedBackground,
  }) {
    return loggedBackground?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? askForLogIn,
    TResult Function()? failed,
    TResult Function()? loggedBackground,
    required TResult orElse(),
  }) {
    if (loggedBackground != null) {
      return loggedBackground();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_AskForLogIn value) askForLogIn,
    required TResult Function(_Failed value) failed,
    required TResult Function(_LoggedBackground value) loggedBackground,
  }) {
    return loggedBackground(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AskForLogIn value)? askForLogIn,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_LoggedBackground value)? loggedBackground,
  }) {
    return loggedBackground?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_AskForLogIn value)? askForLogIn,
    TResult Function(_Failed value)? failed,
    TResult Function(_LoggedBackground value)? loggedBackground,
    required TResult orElse(),
  }) {
    if (loggedBackground != null) {
      return loggedBackground(this);
    }
    return orElse();
  }
}

abstract class _LoggedBackground implements LoginState {
  const factory _LoggedBackground() = _$LoggedBackgroundImpl;
}

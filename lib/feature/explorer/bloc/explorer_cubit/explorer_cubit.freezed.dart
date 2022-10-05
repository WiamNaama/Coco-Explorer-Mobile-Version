// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'explorer_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExplorerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SearchResultModel data) successResult,
    required TResult Function(String errorMessage) errorResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SearchResultModel data)? successResult,
    TResult Function(String errorMessage)? errorResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SearchResultModel data)? successResult,
    TResult Function(String errorMessage)? errorResult,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(SuccessResult value) successResult,
    required TResult Function(ErrorResult value) errorResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SuccessResult value)? successResult,
    TResult Function(ErrorResult value)? errorResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SuccessResult value)? successResult,
    TResult Function(ErrorResult value)? errorResult,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExplorerStateCopyWith<$Res> {
  factory $ExplorerStateCopyWith(
          ExplorerState value, $Res Function(ExplorerState) then) =
      _$ExplorerStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ExplorerStateCopyWithImpl<$Res>
    implements $ExplorerStateCopyWith<$Res> {
  _$ExplorerStateCopyWithImpl(this._value, this._then);

  final ExplorerState _value;
  // ignore: unused_field
  final $Res Function(ExplorerState) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res> extends _$ExplorerStateCopyWithImpl<$Res>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, (v) => _then(v as _$Initial));

  @override
  _$Initial get _value => super._value as _$Initial;
}

/// @nodoc

class _$Initial with DiagnosticableTreeMixin implements Initial {
  const _$Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ExplorerState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ExplorerState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SearchResultModel data) successResult,
    required TResult Function(String errorMessage) errorResult,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SearchResultModel data)? successResult,
    TResult Function(String errorMessage)? errorResult,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SearchResultModel data)? successResult,
    TResult Function(String errorMessage)? errorResult,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(SuccessResult value) successResult,
    required TResult Function(ErrorResult value) errorResult,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SuccessResult value)? successResult,
    TResult Function(ErrorResult value)? errorResult,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SuccessResult value)? successResult,
    TResult Function(ErrorResult value)? errorResult,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ExplorerState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res> extends _$ExplorerStateCopyWithImpl<$Res>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, (v) => _then(v as _$Loading));

  @override
  _$Loading get _value => super._value as _$Loading;
}

/// @nodoc

class _$Loading with DiagnosticableTreeMixin implements Loading {
  const _$Loading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ExplorerState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ExplorerState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SearchResultModel data) successResult,
    required TResult Function(String errorMessage) errorResult,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SearchResultModel data)? successResult,
    TResult Function(String errorMessage)? errorResult,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SearchResultModel data)? successResult,
    TResult Function(String errorMessage)? errorResult,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(SuccessResult value) successResult,
    required TResult Function(ErrorResult value) errorResult,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SuccessResult value)? successResult,
    TResult Function(ErrorResult value)? errorResult,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SuccessResult value)? successResult,
    TResult Function(ErrorResult value)? errorResult,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements ExplorerState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class _$$SuccessResultCopyWith<$Res> {
  factory _$$SuccessResultCopyWith(
          _$SuccessResult value, $Res Function(_$SuccessResult) then) =
      __$$SuccessResultCopyWithImpl<$Res>;
  $Res call({SearchResultModel data});
}

/// @nodoc
class __$$SuccessResultCopyWithImpl<$Res>
    extends _$ExplorerStateCopyWithImpl<$Res>
    implements _$$SuccessResultCopyWith<$Res> {
  __$$SuccessResultCopyWithImpl(
      _$SuccessResult _value, $Res Function(_$SuccessResult) _then)
      : super(_value, (v) => _then(v as _$SuccessResult));

  @override
  _$SuccessResult get _value => super._value as _$SuccessResult;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SuccessResult(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SearchResultModel,
    ));
  }
}

/// @nodoc

class _$SuccessResult with DiagnosticableTreeMixin implements SuccessResult {
  const _$SuccessResult(this.data);

  @override
  final SearchResultModel data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ExplorerState.successResult(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ExplorerState.successResult'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessResult &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$SuccessResultCopyWith<_$SuccessResult> get copyWith =>
      __$$SuccessResultCopyWithImpl<_$SuccessResult>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SearchResultModel data) successResult,
    required TResult Function(String errorMessage) errorResult,
  }) {
    return successResult(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SearchResultModel data)? successResult,
    TResult Function(String errorMessage)? errorResult,
  }) {
    return successResult?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SearchResultModel data)? successResult,
    TResult Function(String errorMessage)? errorResult,
    required TResult orElse(),
  }) {
    if (successResult != null) {
      return successResult(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(SuccessResult value) successResult,
    required TResult Function(ErrorResult value) errorResult,
  }) {
    return successResult(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SuccessResult value)? successResult,
    TResult Function(ErrorResult value)? errorResult,
  }) {
    return successResult?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SuccessResult value)? successResult,
    TResult Function(ErrorResult value)? errorResult,
    required TResult orElse(),
  }) {
    if (successResult != null) {
      return successResult(this);
    }
    return orElse();
  }
}

abstract class SuccessResult implements ExplorerState {
  const factory SuccessResult(final SearchResultModel data) = _$SuccessResult;

  SearchResultModel get data;
  @JsonKey(ignore: true)
  _$$SuccessResultCopyWith<_$SuccessResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorResultCopyWith<$Res> {
  factory _$$ErrorResultCopyWith(
          _$ErrorResult value, $Res Function(_$ErrorResult) then) =
      __$$ErrorResultCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class __$$ErrorResultCopyWithImpl<$Res>
    extends _$ExplorerStateCopyWithImpl<$Res>
    implements _$$ErrorResultCopyWith<$Res> {
  __$$ErrorResultCopyWithImpl(
      _$ErrorResult _value, $Res Function(_$ErrorResult) _then)
      : super(_value, (v) => _then(v as _$ErrorResult));

  @override
  _$ErrorResult get _value => super._value as _$ErrorResult;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_$ErrorResult(
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorResult with DiagnosticableTreeMixin implements ErrorResult {
  const _$ErrorResult(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ExplorerState.errorResult(errorMessage: $errorMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ExplorerState.errorResult'))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorResult &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$ErrorResultCopyWith<_$ErrorResult> get copyWith =>
      __$$ErrorResultCopyWithImpl<_$ErrorResult>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SearchResultModel data) successResult,
    required TResult Function(String errorMessage) errorResult,
  }) {
    return errorResult(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SearchResultModel data)? successResult,
    TResult Function(String errorMessage)? errorResult,
  }) {
    return errorResult?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SearchResultModel data)? successResult,
    TResult Function(String errorMessage)? errorResult,
    required TResult orElse(),
  }) {
    if (errorResult != null) {
      return errorResult(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(SuccessResult value) successResult,
    required TResult Function(ErrorResult value) errorResult,
  }) {
    return errorResult(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SuccessResult value)? successResult,
    TResult Function(ErrorResult value)? errorResult,
  }) {
    return errorResult?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SuccessResult value)? successResult,
    TResult Function(ErrorResult value)? errorResult,
    required TResult orElse(),
  }) {
    if (errorResult != null) {
      return errorResult(this);
    }
    return orElse();
  }
}

abstract class ErrorResult implements ExplorerState {
  const factory ErrorResult(final String errorMessage) = _$ErrorResult;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$ErrorResultCopyWith<_$ErrorResult> get copyWith =>
      throw _privateConstructorUsedError;
}

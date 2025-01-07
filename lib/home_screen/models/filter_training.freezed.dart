// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_training.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FilterTraining _$FilterTrainingFromJson(Map<String, dynamic> json) {
  return _FilterTraining.fromJson(json);
}

/// @nodoc
mixin _$FilterTraining {
  List<String> get locations => throw _privateConstructorUsedError;
  List<String> get trainingNames => throw _privateConstructorUsedError;
  List<String> get trainerNames => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilterTrainingCopyWith<FilterTraining> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterTrainingCopyWith<$Res> {
  factory $FilterTrainingCopyWith(
          FilterTraining value, $Res Function(FilterTraining) then) =
      _$FilterTrainingCopyWithImpl<$Res, FilterTraining>;
  @useResult
  $Res call(
      {List<String> locations,
      List<String> trainingNames,
      List<String> trainerNames});
}

/// @nodoc
class _$FilterTrainingCopyWithImpl<$Res, $Val extends FilterTraining>
    implements $FilterTrainingCopyWith<$Res> {
  _$FilterTrainingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locations = null,
    Object? trainingNames = null,
    Object? trainerNames = null,
  }) {
    return _then(_value.copyWith(
      locations: null == locations
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<String>,
      trainingNames: null == trainingNames
          ? _value.trainingNames
          : trainingNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
      trainerNames: null == trainerNames
          ? _value.trainerNames
          : trainerNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterTrainingImplCopyWith<$Res>
    implements $FilterTrainingCopyWith<$Res> {
  factory _$$FilterTrainingImplCopyWith(_$FilterTrainingImpl value,
          $Res Function(_$FilterTrainingImpl) then) =
      __$$FilterTrainingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> locations,
      List<String> trainingNames,
      List<String> trainerNames});
}

/// @nodoc
class __$$FilterTrainingImplCopyWithImpl<$Res>
    extends _$FilterTrainingCopyWithImpl<$Res, _$FilterTrainingImpl>
    implements _$$FilterTrainingImplCopyWith<$Res> {
  __$$FilterTrainingImplCopyWithImpl(
      _$FilterTrainingImpl _value, $Res Function(_$FilterTrainingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locations = null,
    Object? trainingNames = null,
    Object? trainerNames = null,
  }) {
    return _then(_$FilterTrainingImpl(
      locations: null == locations
          ? _value._locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<String>,
      trainingNames: null == trainingNames
          ? _value._trainingNames
          : trainingNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
      trainerNames: null == trainerNames
          ? _value._trainerNames
          : trainerNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FilterTrainingImpl implements _FilterTraining {
  const _$FilterTrainingImpl(
      {required final List<String> locations,
      required final List<String> trainingNames,
      required final List<String> trainerNames})
      : _locations = locations,
        _trainingNames = trainingNames,
        _trainerNames = trainerNames;

  factory _$FilterTrainingImpl.fromJson(Map<String, dynamic> json) =>
      _$$FilterTrainingImplFromJson(json);

  final List<String> _locations;
  @override
  List<String> get locations {
    if (_locations is EqualUnmodifiableListView) return _locations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_locations);
  }

  final List<String> _trainingNames;
  @override
  List<String> get trainingNames {
    if (_trainingNames is EqualUnmodifiableListView) return _trainingNames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trainingNames);
  }

  final List<String> _trainerNames;
  @override
  List<String> get trainerNames {
    if (_trainerNames is EqualUnmodifiableListView) return _trainerNames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trainerNames);
  }

  @override
  String toString() {
    return 'FilterTraining(locations: $locations, trainingNames: $trainingNames, trainerNames: $trainerNames)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterTrainingImpl &&
            const DeepCollectionEquality()
                .equals(other._locations, _locations) &&
            const DeepCollectionEquality()
                .equals(other._trainingNames, _trainingNames) &&
            const DeepCollectionEquality()
                .equals(other._trainerNames, _trainerNames));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_locations),
      const DeepCollectionEquality().hash(_trainingNames),
      const DeepCollectionEquality().hash(_trainerNames));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterTrainingImplCopyWith<_$FilterTrainingImpl> get copyWith =>
      __$$FilterTrainingImplCopyWithImpl<_$FilterTrainingImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FilterTrainingImplToJson(
      this,
    );
  }
}

abstract class _FilterTraining implements FilterTraining {
  const factory _FilterTraining(
      {required final List<String> locations,
      required final List<String> trainingNames,
      required final List<String> trainerNames}) = _$FilterTrainingImpl;

  factory _FilterTraining.fromJson(Map<String, dynamic> json) =
      _$FilterTrainingImpl.fromJson;

  @override
  List<String> get locations;
  @override
  List<String> get trainingNames;
  @override
  List<String> get trainerNames;
  @override
  @JsonKey(ignore: true)
  _$$FilterTrainingImplCopyWith<_$FilterTrainingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

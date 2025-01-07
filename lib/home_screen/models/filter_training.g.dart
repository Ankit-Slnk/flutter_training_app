// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_training.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FilterTrainingImpl _$$FilterTrainingImplFromJson(Map<String, dynamic> json) =>
    _$FilterTrainingImpl(
      locations:
          (json['locations'] as List<dynamic>).map((e) => e as String).toList(),
      trainingNames: (json['trainingNames'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      trainerNames: (json['trainerNames'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$FilterTrainingImplToJson(
        _$FilterTrainingImpl instance) =>
    <String, dynamic>{
      'locations': instance.locations,
      'trainingNames': instance.trainingNames,
      'trainerNames': instance.trainerNames,
    };

import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_training.freezed.dart';
part 'filter_training.g.dart';

@freezed
class FilterTraining with _$FilterTraining {
  const factory FilterTraining({
    required List<String> locations,
    required List<String> trainingNames,
    required List<String> trainerNames,
  }) = _FilterTraining;

  factory FilterTraining.fromJson(Map<String, Object?> json) =>
      _$FilterTrainingFromJson(json);
}

enum FilterType {
  location('Location'),
  trainingName('Training Name'),
  trainerName('Trainer');

  final String name;

  const FilterType(this.name);
}

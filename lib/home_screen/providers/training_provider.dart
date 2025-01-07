import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training_app/home_screen/models/filter_training.dart';
import 'package:flutter_training_app/home_screen/models/training.dart';

class TrainingProvider extends StateNotifier<FilterTraining> {
  TrainingProvider()
      : super(const FilterTraining(
          locations: [],
          trainingNames: [],
          trainerNames: [],
        ));

  void updateLocation(String location) {
    if (state.locations.contains(location)) {
      state = state.copyWith(
        locations: state.locations.where((e) => e != location).toList(),
      );
    } else {
      state = state.copyWith(
        locations: [...state.locations, location],
      );
    }
  }

  void updateTrainingName(String trainingName) {
    if (state.trainingNames.contains(trainingName)) {
      state = state.copyWith(
        trainingNames:
            state.trainingNames.where((e) => e != trainingName).toList(),
      );
    } else {
      state = state.copyWith(
        trainingNames: [...state.trainingNames, trainingName],
      );
    }
  }

  void updateTrainerName(String trainerName) {
    if (state.trainerNames.contains(trainerName)) {
      state = state.copyWith(
        trainerNames:
            state.trainerNames.where((e) => e != trainerName).toList(),
      );
    } else {
      state = state.copyWith(
        trainerNames: [...state.trainerNames, trainerName],
      );
    }
  }

  void clear() {
    state = const FilterTraining(
      locations: [],
      trainingNames: [],
      trainerNames: [],
    );
  }

  List<Training> loadTrainings() {
    return trainings.where((training) {
      if (state.locations.isNotEmpty &&
          !state.locations.contains(training.address)) {
        return false;
      }
      if (state.trainingNames.isNotEmpty &&
          !state.trainingNames.contains(training.name)) {
        return false;
      }
      if (state.trainerNames.isNotEmpty &&
          !state.trainerNames.contains(training.trainer)) {
        return false;
      }
      return true;
    }).toList();
  }
}

final trainingsProvider =
    StateNotifierProvider.autoDispose<TrainingProvider, FilterTraining>((ref) {
  return TrainingProvider();
});

final filterTypeProvider =
    StateProvider.autoDispose<FilterType>((ref) => FilterType.location);

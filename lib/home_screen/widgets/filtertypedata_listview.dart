import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training_app/home_screen/models/filter_training.dart';
import 'package:flutter_training_app/home_screen/models/training.dart';
import 'package:flutter_training_app/home_screen/providers/training_provider.dart';

class FiltertypedataListview extends ConsumerWidget {
  const FiltertypedataListview({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var filterType = ref.watch(filterTypeProvider);
    var trainingProvider = ref.watch(trainingsProvider);

    List<String> filtersList = filterType == FilterType.location
        ? trainings
            .map(
              (e) => e.address,
            )
            .toList()
        : filterType == FilterType.trainingName
            ? trainings
                .map(
                  (e) => e.name,
                )
                .toList()
            : filterType == FilterType.trainerName
                ? trainings
                    .map(
                      (e) => e.trainer,
                    )
                    .toList()
                : [];

    return ListView.builder(
      itemCount: filtersList.length,
      itemBuilder: (context, index) {
        String filter = filtersList[index];
        bool selectedValue = filterType == FilterType.location
            ? trainingProvider.locations.contains(filter)
            : filterType == FilterType.trainingName
                ? trainingProvider.trainingNames.contains(filter)
                : filterType == FilterType.trainerName
                    ? trainingProvider.trainerNames.contains(filter)
                    : false;

        return CheckboxListTile(
          controlAffinity: ListTileControlAffinity.leading,
          title: Text(filter),
          value: selectedValue,
          onChanged: (value) {
            if (filterType == FilterType.location) {
              ref.read(trainingsProvider.notifier).updateLocation(filter);
            } else if (filterType == FilterType.trainingName) {
              ref.read(trainingsProvider.notifier).updateTrainingName(filter);
            } else if (filterType == FilterType.trainerName) {
              ref.read(trainingsProvider.notifier).updateTrainerName(filter);
            }
          },
        );
      },
    );
  }
}

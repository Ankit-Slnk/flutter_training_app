import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training_app/home_screen/models/filter_training.dart';
import 'package:flutter_training_app/home_screen/providers/training_provider.dart';

class FiltertypeListview extends ConsumerWidget {
  const FiltertypeListview({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var filterType = ref.watch(filterTypeProvider);

    return ListView.builder(
      itemCount: FilterType.values.length,
      itemBuilder: (context, index) {
        FilterType filter = FilterType.values[index];
        return GestureDetector(
          onTap: () {
            ref.read(filterTypeProvider.notifier).state = filter;
          },
          child: Container(
            alignment: Alignment.centerLeft,
            color: filterType == filter
                ? Colors.white
                : Colors.grey.withOpacity(0.3),
            padding: const EdgeInsets.all(16),
            child: Text(
              filter.name,
              style: TextStyle(
                fontWeight: filterType == filter ? FontWeight.bold : null,
              ),
            ),
          ),
        );
      },
    );
  }
}

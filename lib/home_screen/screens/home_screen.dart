import 'package:flutter/material.dart';
import 'package:flutter_training_app/home_screen/providers/training_provider.dart';
import 'package:flutter_training_app/home_screen/widgets/carousel_view.dart';
import 'package:flutter_training_app/home_screen/widgets/training_item_view.dart';
import 'package:flutter_training_app/utility/app_colors.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(trainingsProvider);

    var trainings = ref.read(trainingsProvider.notifier).loadTrainings();

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: AppColors.themeColor,
        title: const Text(
          'Trainings',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CarouselView(),
            ListView.builder(
              padding: const EdgeInsets.all(16),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: trainings.length,
              itemBuilder: (context, index) {
                return TrainingItemView(
                  training: trainings[index],
                  index: index,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

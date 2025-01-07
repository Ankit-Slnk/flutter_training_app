import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training_app/home_screen/models/training.dart';
import 'package:flutter_training_app/home_screen/widgets/filter_trainings_view.dart';
import 'package:flutter_training_app/home_screen/widgets/highlights_item_view.dart';
import 'package:flutter_training_app/utility/app_colors.dart';

class CarouselView extends ConsumerWidget {
  const CarouselView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              height: 150,
              color: AppColors.themeColor,
            ),
            Container(
              height: 150,
              color: Colors.white,
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Highlights',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 180,
                enlargeCenterPage: true,
                enlargeFactor: 0.25,
              ),
              items: trainings.map((i) {
                return HighlightsItemView(
                  training: i,
                );
              }).toList(),
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      context: context,
                      builder: (context) {
                        return const FilterTrainingsView();
                      },
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.all(16),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 4,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.tune,
                          size: 15,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          'Filter',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}

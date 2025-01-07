import 'package:flutter/material.dart';
import 'package:flutter_training_app/home_screen/models/training.dart';
import 'package:flutter_training_app/utility/app_assets.dart';
import 'package:flutter_training_app/utility/app_colors.dart';
import 'package:flutter_training_app/widgets/dotted_line.dart';

class TrainingItemView extends StatelessWidget {
  const TrainingItemView({
    super.key,
    required this.training,
    required this.index,
  });
  final Training training;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 8,
      ),
      child: Card(
        color: Colors.white,
        clipBehavior: Clip.hardEdge,
        child: Container(
          padding: const EdgeInsets.all(16),
          height: 190,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      training.date,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      training.time,
                      style: const TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      training.address,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              const DottedLine(
                direction: Axis.vertical,
                lineThickness: 1,
                dashLength: 4,
                dashColor: Colors.grey,
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      index % 2 == 0 ? 'Filling Fast!' : 'Early Bird!',
                      style: TextStyle(
                        color: AppColors.themeColor,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      training.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          AppAssets.man,
                          height: 30,
                          width: 30,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          training.trainer,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FilledButton(
                          style: ButtonStyle(
                            padding:
                                WidgetStateProperty.all<EdgeInsetsGeometry>(
                              const EdgeInsets.symmetric(
                                horizontal: 12,
                              ),
                            ),
                            backgroundColor:
                                WidgetStatePropertyAll(AppColors.themeColor),
                            shape:
                                WidgetStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text('Enroll Now'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

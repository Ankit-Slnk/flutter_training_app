import 'package:flutter/material.dart';
import 'package:flutter_training_app/home_screen/models/training.dart';
import 'package:flutter_training_app/utility/app_assets.dart';
import 'package:flutter_training_app/utility/app_colors.dart';

class HighlightsItemView extends StatelessWidget {
  const HighlightsItemView({
    super.key,
    required this.training,
  });
  final Training training;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              AppAssets.training,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 180,
            color: Colors.black.withOpacity(0.5),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                Text(
                  training.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  '${training.address} - ${training.date}',
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Text(
                      training.price,
                      style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        color: AppColors.themeColor,
                        decorationColor: AppColors.themeColor,
                      ),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      training.discountedPrice,
                      style: TextStyle(
                        color: AppColors.themeColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

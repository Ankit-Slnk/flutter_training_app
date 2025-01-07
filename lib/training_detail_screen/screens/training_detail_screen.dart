import 'package:faker/faker.dart' as f;
import 'package:flutter/material.dart';
import 'package:flutter_training_app/home_screen/models/training.dart';
import 'package:flutter_training_app/utility/app_assets.dart';
import 'package:flutter_training_app/utility/app_colors.dart';
import 'package:flutter_training_app/widgets/app_button.dart';

class TrainingDetailScreen extends StatelessWidget {
  const TrainingDetailScreen({
    super.key,
    required this.training,
  });
  final Training training;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.all(8.0),
        child: AppButton(
          text: 'Enroll Now',
        ),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: AppColors.themeColor,
            leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                color: Colors.transparent,
                height: kToolbarHeight,
                width: kToolbarHeight,
                child: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Colors.white,
                ),
              ),
            ),
            pinned: true,
            expandedHeight: MediaQuery.of(context).size.height / 2.5,
            title: const Text(
              "Detail",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    AppAssets.training,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 2.5,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [
                          0,
                          0.5,
                          0.9,
                          1,
                        ],
                        colors: [
                          Colors.black26,
                          Colors.black45,
                          Colors.black87,
                          Colors.black,
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 24,
                      right: 24,
                      bottom: 16,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Spacer(),
                        Text(
                          training.name,
                          style: TextStyle(
                            color: AppColors.themeColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          training.address,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          training.date,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          training.time,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 24),
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
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 24,
                left: 24,
                right: 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About the training',
                    style: TextStyle(
                      color: AppColors.themeColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    f.faker.lorem.sentences(50).join(' '),
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

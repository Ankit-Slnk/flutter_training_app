import 'package:flutter/material.dart';
import 'package:flutter_training_app/home_screen/widgets/filtertype_listview.dart';
import 'package:flutter_training_app/home_screen/widgets/filtertypedata_listview.dart';

class FilterTrainingsView extends StatelessWidget {
  const FilterTrainingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 16,
          ),
          child: Row(
            children: [
              const Expanded(
                child: Text(
                  'Filters',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const Icon(Icons.close),
              ),
            ],
          ),
        ),
        const Divider(
          height: 0,
        ),
        const Expanded(
          child: Row(
            children: [
              Expanded(
                child: FiltertypeListview(),
              ),
              Expanded(
                flex: 2,
                child: FiltertypedataListview(),
              )
            ],
          ),
        )
      ],
    );
  }
}

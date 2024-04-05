import 'package:flutter/material.dart';

class CategoryText extends StatelessWidget {
  CategoryText({super.key});

  final List<String> _category = [
    'Food',
    'Vegetables',
    'Eggs',
    'Tea',
    'Tea',
    'Tea',
    'Tea',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Categories",
          textScaler: TextScaler.noScaling,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        SizedBox(
          height: 60,
          child: Row(
            children: [
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: ActionChip(
                        side: BorderSide.none,
                        backgroundColor: Colors.yellow.shade900,
                        onPressed: () {},
                        label: Text(
                          _category[index],
                          textScaler: TextScaler.noScaling,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    );
                  },
                  itemCount: _category.length,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_forward),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:flower_boutique/feature/catalog/data/models/catalog_plants.dart';
import 'package:flower_boutique/feature/detailed/ui/detailed_inform_plants_screen.dart';

import 'package:flutter/material.dart';

class PlantsTab extends StatelessWidget {
  const PlantsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        childAspectRatio: 12 / 16,
      ),
      itemCount: catalogPlants.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            surfaceTintColor: Colors.white,
            shadowColor: Colors.black,
            elevation: 4,
            child: InkWell(
              borderRadius: BorderRadius.circular(12.0),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DetailedInformPlantsScreen(
                      detailedInformPlants: catalogPlants[index],
                    ),
                  ),
                );
              },
              child: Column(
                children: [
                  Hero(
                    tag: catalogPlants[index].name,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        catalogPlants[index].picture,
                        height: 150,
                        width: 190,
                      ),
                    ),
                  ),
                  Text(
                    catalogPlants[index].name,
                    style: const TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '${catalogPlants[index].price}\$'.toString(),
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

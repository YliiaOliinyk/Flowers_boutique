import 'package:flower_boutique/feature/catalog/data/models/catalog_balloons.dart';
import 'package:flower_boutique/feature/detailed/ui/datailed_inform_balloons_screen.dart';
import 'package:flutter/material.dart';

class BalloonsTab extends StatelessWidget {
  const BalloonsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        childAspectRatio: 12 / 16,
      ),
      itemCount: catalogBalloons.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8),
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
                    builder: (context) => DetailedInformBalloonsScreen(
                      detailedInformBalloons: catalogBalloons[index],
                    ),
                  ),
                );
              },
              child: Column(
                children: [
                  Hero(
                    tag: catalogBalloons[index].name,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        catalogBalloons[index].picture,
                        height: 160,
                        width: 200,
                      ),
                    ),
                  ),
                  Text(
                    catalogBalloons[index].name,
                    style: const TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '${catalogBalloons[index].price}\$'.toString(),
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

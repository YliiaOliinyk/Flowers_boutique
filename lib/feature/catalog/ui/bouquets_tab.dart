import 'package:flower_boutique/feature/catalog/data/models/catalog_bouquets.dart';
import 'package:flower_boutique/feature/detailed/ui/detailed_inform_bouquets_screen.dart';
import 'package:flutter/material.dart';

class BouquetsTab extends StatelessWidget {
  const BouquetsTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        childAspectRatio: 12 / 16,
      ),
      itemCount: catalogFlowers.length,
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
                    builder: (context) => DetailedInformBouquetsScreen(
                      detailedInformBouquets: catalogFlowers[index],
                    ),
                  ),
                );
              },
              child: Column(
                children: [
                  Hero(
                    tag: catalogFlowers[index].name,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      child: Image.asset(catalogFlowers[index].picture, height: 150, width: 200),
                    ),
                  ),
                  Text(
                    catalogFlowers[index].name,
                    style: const TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '${catalogFlowers[index].price}\$'.toString(),
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

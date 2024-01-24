import 'package:flower_boutique/feature/basket/ui/checkout_basket_item.dart';
import 'package:flower_boutique/feature/catalog/data/models/catalog_plants.dart';
import 'package:flower_boutique/feature/detailed/ui/button_add_to_basket.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/**
 * 1. Не потрібна пуста стріка в build 
 * 2. В EdgeInsets передаємо тільки цілі значення без дробової частини 16.0 - погана практика
 * 3. В тебе є варінг в класі який ти не виправила 
 * 4. Не подобаються значення висоти и ширини для картинок обговоримо це разом
 */
class DetailedInformPlantsScreen extends StatelessWidget {
  const DetailedInformPlantsScreen({
    super.key,
    required this.detailedInformPlants,
  });

  final CatalogPlants detailedInformPlants;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flower Boutique',
          style: GoogleFonts.dancingScript(
            textStyle: const TextStyle(
              fontSize: 40,
              color: Color.fromARGB(255, 143, 38, 73),
            ),
          ),
        ),
        actions: const [
          CheckoutBasketItem(),
        ],
      ),
      body: Column(
        children: [
          Hero(
            tag: detailedInformPlants.name,
            child: Image.asset(
              detailedInformPlants.picture,
              fit: BoxFit.fitHeight,
              height: 380,
              width: 400,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            detailedInformPlants.name,
            style: const TextStyle(
              fontSize: 40,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              detailedInformPlants.description,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ),
          const Spacer(),
          ButtonAddToBasket(
            price: detailedInformPlants.price,
            name: detailedInformPlants.name,
          )
        ],
      ),
    );
  }
}

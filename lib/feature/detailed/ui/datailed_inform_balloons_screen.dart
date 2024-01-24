import 'package:flower_boutique/feature/basket/ui/checkout_basket_item.dart';
import 'package:flower_boutique/feature/catalog/data/models/catalog_balloons.dart';
import 'package:flower_boutique/feature/detailed/ui/button_add_to_basket.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailedInformBalloonsScreen extends StatelessWidget {
  const DetailedInformBalloonsScreen({
    super.key,
    required this.detailedInformBalloons,
  });

  final CatalogBalloons detailedInformBalloons;

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
        actions: [const CheckoutBasketItem()],
      ),
      body: Column(
        children: [
          Hero(
            tag: detailedInformBalloons.name,
            child: Image.asset(
              detailedInformBalloons.picture,
              fit: BoxFit.fitHeight,
              height: 450,
              width: 400,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            detailedInformBalloons.name,
            style: const TextStyle(
              fontSize: 40,
              color: Colors.black,
            ),
          ),
          const Spacer(),
          ButtonAddToBasket(
            price: detailedInformBalloons.price,
            name: detailedInformBalloons.name,
          ),
        ],
      ),
    );
  }
}

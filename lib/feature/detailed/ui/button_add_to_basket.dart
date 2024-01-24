import 'package:flower_boutique/feature/detailed/ui/top_snack_bar.dart';
import 'package:flutter/material.dart';

import 'package:top_snackbar_flutter/top_snack_bar.dart';

class ButtonAddToBasket extends StatelessWidget {
  const ButtonAddToBasket({super.key, required this.price, required this.name});

  final int price;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(38),
          topRight: Radius.circular(38),
        ),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 32,
          horizontal: 24,
        ),
        child: ElevatedButton(
          onPressed: () {
            showTopSnackBar(
              Overlay.of(context),
              TopSnackBar(
                name: name,
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(12),
            fixedSize: const Size(300, 54),
            backgroundColor: const Color.fromARGB(255, 143, 38, 73),
          ),
          child: Text(
            'Add to basket - $price\$',
            style: const TextStyle(
              fontSize: 22,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flower_boutique/feature/basket/ui/basket_screen.dart';
import 'package:flutter/material.dart';

class CheckoutBasketItem extends StatelessWidget {
  const CheckoutBasketItem({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const BasketScreen(),
          ),
        );
      },
      icon: const Icon(
        Icons.shopping_cart_checkout,
        color: Colors.black,
        size: 30,
      ),
    );
  }
}

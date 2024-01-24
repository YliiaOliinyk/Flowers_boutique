import 'package:flower_boutique/feature/basket/ui/checkout_basket_item.dart';

import 'package:flower_boutique/feature/catalog/ui/bouquets_tab.dart';
import 'package:flower_boutique/feature/catalog/ui/balloons_tab.dart';
import 'package:flower_boutique/feature/catalog/ui/plants_tab.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabBarScreen extends StatelessWidget {
  const TabBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
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
          bottom: const TabBar(
            splashBorderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
            tabAlignment: TabAlignment.center,
            labelPadding: EdgeInsets.symmetric(horizontal: 30),
            isScrollable: true,
            indicatorColor: Color.fromARGB(255, 143, 38, 73),
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyle(fontSize: 16),
            dividerHeight: 0,
            tabs: [
              Tab(child: Text('Bouquets')),
              Tab(child: Text('Plants')),
              Tab(child: Text('Ballons')),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            BouquetsTab(),
            PlantsTab(),
            BalloonsTab(),
          ],
        ),
      ),
    );
  }
}

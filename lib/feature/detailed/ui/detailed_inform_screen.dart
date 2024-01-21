import 'package:flower_boutique/feature/catalog/data/catalog_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailedInformScreen extends StatelessWidget {
  const DetailedInformScreen({super.key, required this.detailedInform});

  final CatalogList detailedInform;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detailed Inform'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: detailedInform.name,
              child: Image.asset(
                detailedInform.picture,
                fit: BoxFit.fitHeight,
                height: 400,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  detailedInform.name,
                  style: GoogleFonts.salsa(
                    textStyle: const TextStyle(
                      fontSize: 40,
                      color: Color.fromARGB(255, 143, 38, 73),
                    ),
                  ),
                ),
                Text(
                  '${detailedInform.price} \$',
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 50, top: 1),
                child: RatingBar.builder(
                  itemSize: 20,
                  initialRating: 4,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {},
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 5),
              child: Text(
                detailedInform.description,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              icon: const Icon(Icons.add_shopping_cart),
              onPressed: () {},
              label: const Text(
                'Add to basket',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

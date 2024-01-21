import 'package:flower_boutique/feature/catalog/data/catalog_list.dart';
import 'package:flower_boutique/feature/detailed/ui/detailed_inform_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:like_button/like_button.dart';

class CatalogFlowersScreen extends StatelessWidget {
  const CatalogFlowersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catalog Flowers'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
        ),
        itemCount: catalogFlowers.length,
        itemBuilder: (context, index) {
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            surfaceTintColor: const Color.fromARGB(255, 179, 125, 190),
            shadowColor: const Color.fromARGB(255, 16, 2, 2),
            elevation: 4,
            child: InkWell(
              borderRadius: BorderRadius.circular(15.0),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DetailedInformScreen(
                      detailedInform: catalogFlowers[index],
                    ),
                  ),
                );
              },
              child: Column(
                children: [
                  LikeButton(
                    mainAxisAlignment: MainAxisAlignment.end,
                    size: 25,
                    likeBuilder: (isLiked) => Icon(
                      Icons.favorite,
                      color: isLiked ? Colors.red : Colors.grey,
                      size: 20,
                    ),
                  ),
                  Hero(
                    tag: catalogFlowers[index].name,
                    child: Image.asset(catalogFlowers[index].picture, height: 130, width: 200),
                  ),
                  Text(
                    catalogFlowers[index].name,
                    style: GoogleFonts.salsa(
                      textStyle: const TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 143, 38, 73),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

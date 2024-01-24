class CatalogBouquets {
  final String name;
  final String picture;
  final int price;

  CatalogBouquets({
    required this.name,
    required this.picture,
    required this.price,
  });
}

List<CatalogBouquets> catalogFlowers = [
  CatalogBouquets(
    name: 'Eustoma',
    picture: 'assets/bouquet1.png',
    price: 100,
  ),
  CatalogBouquets(
    name: 'Romashka ',
    picture: 'assets/bouquet2.png',
    price: 150,
  ),
  CatalogBouquets(
    name: 'Sunflower',
    picture: 'assets/bouquet3.png',
    price: 200,
  ),
  CatalogBouquets(
    name: 'Lily',
    picture: 'assets/bouquet4.png',
    price: 250,
  ),
  CatalogBouquets(
    name: 'Orchid',
    picture: 'assets/bouquet5.png',
    price: 300,
  ),
  CatalogBouquets(
    name: 'Daisy',
    picture: 'assets/bouquet6.png',
    price: 350,
  ),
  CatalogBouquets(
    name: 'Carnation',
    picture: 'assets/bouquet7.png',
    price: 400,
  ),
  CatalogBouquets(
    name: 'Dahlia',
    picture: 'assets/bouquet8.png',
    price: 450,
  ),
  CatalogBouquets(
    name: 'Iris',
    picture: 'assets/bouquet9.png',
    price: 500,
  ),
  CatalogBouquets(
    name: 'Lavender',
    picture: 'assets/bouquet10.png',
    price: 550,
  ),
];

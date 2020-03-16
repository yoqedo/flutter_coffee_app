class Product {
  String image;
  String product;
  String price;

  Product({
    this.image,
    this.product,
    this.price,
  });
}

final List<Product> products = [
  Product(
      image: 'assets/images/coffee.png',
      product: 'Coffee 2 Go',
      price: '2.50',
  ),
  Product(
      image: 'assets/images/coffee-cup.png',
      product: 'Coffee',
      price: '2.50',
  ),
  Product(
    image: 'assets/images/cappuccino.png',
    product: 'Cappucino',
    price: '3.50',
  ),
  Product(
    image: 'assets/images/espresso.png',
    product: 'Espresso',
    price: '3.00',
  ),
  Product(
    image: 'assets/images/latte-macchiato.png',
    product: 'Macciato',
    price: '3.50',
  ),
  Product(
    image: 'assets/images/latte.png',
    product: 'Coffe Latte',
    price: '3.50',
  ),
];

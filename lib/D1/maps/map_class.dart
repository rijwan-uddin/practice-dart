class Product {
  final String name;
  final double price;

  Product({required this.name, required this.price});
}

void main() {
  List<Map<String, dynamic>> productData = [
    {'name': 'Laptop', 'price': 1500.0},
    {'name': 'Phone', 'price': 800.0},
  ];

  List<Product> products = productData.map((data) {
    return Product(name: data['name'], price: data['price']);
  }).toList();

  products.forEach((product) {
    print('${product.name}: \$${product.price}');
  });

}

class Product {
  String name;
  double price;
  int _stock;

  // Constructor
  Product(this.name, this.price, this._stock);

  // Method
  void display() {
    print("Product: $name");
    print("Price: ₱$price");
    print("Stock: $_stock");
    print("=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+");
  }

  // Update private stock
  void addStock(int amount) {
    _stock += amount;
  }
}

// Main Program Display
void main() {
    print("\n=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+");
    print("  Sari-Sari Store Stock Management Program");
    print("=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+");

  // List of products
  List<Product> products = [
    Product("Coca Cola 1L", 90, 5),
    Product("Kopiko Blanca Twin Pack", 20, 12),
  ];

  // Display products
  for (Product product in products) {
    product.display();
  }

  // Add stock
  products[0].addStock(5);

  print("\t    After adding stock:");
  print("=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+");
  products[0].display();
}
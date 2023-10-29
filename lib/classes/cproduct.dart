class Product {
  String name;
  double price;
  int items_in_stock;
  

  Product(this.name, this.price, this.items_in_stock);

  static List<Product> prods = [
    Product(
      "Demo Product #1",
      30.00,
      20,
    
    ),
    Product(
      "Demo Product #2",
      60.5,
      1000,
     
    ),
    Product(
      "Demo Product #3",
      10.75,
      5,
    
    ),
    Product(
      "Demo Product #4",
      63.50,
      5,
      
    ),
    Product(
      "Demo Product #5",
      12.50,
      5000,

    ),
    Product(
      "Demo Product #6",
      512.25,
      1,
     
    ),
  ];
}
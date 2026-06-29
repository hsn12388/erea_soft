class CartService {
  static final List<Map<String, dynamic>> items = [];

  static void addItem(Map<String, dynamic> product) {
    final index = items.indexWhere((e) => e['name'] == product['name']);
    if (index != -1) {
      items[index]['quantity']++;
    } else {
      items.add({
        'name': product['name'],
        'weight': product['weight'],
        'price':
            double.tryParse(product['price'].toString().replaceAll('\$', '')) ??
            0.0,
        'quantity': 1,
        'imageUrl': product['imageUrl'],
      });
    }
  }

  static void removeItem(int index) => items.removeAt(index);

  static void updateQuantity(int index, int change) {
    final newQty = items[index]['quantity'] + change;
    if (newQty > 0) items[index]['quantity'] = newQty;
  }

  static double get total =>
      items.fold(0, (sum, item) => sum + (item['price'] * item['quantity']));
}

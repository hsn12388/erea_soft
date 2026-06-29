class FavouriteService {
  static final List<Map<String, dynamic>> items = [];

  static bool isFavourite(String name) => items.any((e) => e['name'] == name);

  static void toggle(Map<String, dynamic> product) {
    final index = items.indexWhere((e) => e['name'] == product['name']);
    if (index != -1) {
      items.removeAt(index);
    } else {
      items.add({
        'name': product['name'],
        'weight': product['weight'],
        'price': product['price'],
        'imageUrl': product['imageUrl'],
      });
    }
  }
}

import 'package:flutter/material.dart';
import '../category_screen/category_screen.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

  final Map<String, List<Map<String, String>>> categoryProducts = {
    'Fresh Fruits & Vegetable': [
      {
        'name': 'Red Apple',
        'weight': '1kg, Price',
        'price': '\$4.99',
        'imageUrl': 'https://www.themealdb.com/images/ingredients/Apple.png',
      },
      {
        'name': 'Banana',
        'weight': '7pcs, Price',
        'price': '\$2.99',
        'imageUrl': 'https://www.themealdb.com/images/ingredients/Banana.png',
      },
    ],
    'Cooking Oil & Ghee': [
      {
        'name': 'Olive Oil',
        'weight': '1L, Price',
        'price': '\$8.99',
        'imageUrl':
            'https://www.themealdb.com/images/ingredients/Olive%20Oil.png',
      },
    ],
    'Meat & Fish': [
      {
        'name': 'Beef Bone',
        'weight': '1kg, Price',
        'price': '\$4.99',
        'imageUrl': 'assets/images/لحمه.png',
      },
      {
        'name': 'Broiler Chicken',
        'weight': '1kg, Price',
        'price': '\$4.99',
        'imageUrl': 'assets/images/فراخ.png',
      },
    ],
    'Bakery & Snacks': [
      {
        'name': 'White Bread',
        'weight': '400g, Price',
        'price': '\$2.50',
        'imageUrl': 'https://www.themealdb.com/images/ingredients/Bread.png',
      },
    ],
    'Dairy & Eggs': [
      {
        'name': 'Egg Chicken Red',
        'weight': '4pcs, Price',
        'price': '\$1.99',
        'imageUrl': 'assets/images/cart2.png',
      },
      {
        'name': 'Egg Chicken White',
        'weight': '180g, Price',
        'price': '\$1.50',
        'imageUrl': 'assets/images/pngfuel 18.png',
      },
      {
        'name': 'Egg Pasta',
        'weight': '30gm, Price',
        'price': '\$15.99',
        'imageUrl': 'assets/images/hiclipart 2.png',
      },
      {
        'name': 'Egg Noodles',
        'weight': '2L, Price',
        'price': '\$15.99',
        'imageUrl': 'assets/images/egg-noodle (1) 2.png',
      },
      {
        'name': 'Mayonnaise Eggless',
        'weight': '250g, Price',
        'price': '\$4.99',
        'imageUrl':
            'assets/images/American-Garden-Mayonnaise-Eggless-473ml 2.png',
      },
      {
        'name': 'Egg Noodles',
        'weight': '500g, Price',
        'price': '\$15.99',
        'imageUrl': 'assets/images/rp_24790392_0053554627_l 2.png',
      },
    ],
    'Beverages': [
      {
        'name': 'Diet Coke',
        'weight': '355ml, Price',
        'price': '\$1.99',
        'imageUrl': 'assets/images/pngfuel 11.png',
      },
      {
        'name': 'Sprite Can',
        'weight': '325ml, Price',
        'price': '\$1.50',
        'imageUrl': 'assets/images/pngfuel 12 (1).png',
      },
      {
        'name': 'Apple & Grape Juice',
        'weight': '2L, Price',
        'price': '\$15.99',
        'imageUrl': 'assets/images/tree-top-juice-apple-grape-64oz 1.png',
      },
      {
        'name': 'Orange Juice',
        'weight': '2L, Price',
        'price': '\$15.99',
        'imageUrl': 'assets/images/tree-top-juice-apple-grape-64oz 1 (1).png',
      },
      {
        'name': 'Coca Cola Can',
        'weight': '325ml, Price',
        'price': '\$4.99',
        'imageUrl': 'assets/images/pngfuel 13.png',
      },
      {
        'name': 'Pepsi Can',
        'weight': '330ml, Price',
        'price': '\$4.99',
        'imageUrl': 'assets/images/pngfuel 14.png',
      },
    ],
  };

  List<Map<String, String>> get allProducts =>
      categoryProducts.values.expand((e) => e).toList();

  List<Map<String, String>> get searchResults {
    if (_searchQuery.isEmpty) return [];
    return allProducts
        .where(
          (p) => p['name']!.toLowerCase().contains(_searchQuery.toLowerCase()),
        )
        .toList();
  }

  final List<Map<String, dynamic>> categories = [
    {
      'title': 'Fresh Fruits\n& Vegetable',
      'color': const Color(0xFFE8F5E9),
      'borderColor': const Color(0xFF81C784),
      'imagePath': 'assets/images/fresh.png',
    },
    {
      'title': 'Cooking Oil\n& Ghee',
      'color': const Color(0xFFFFF3E0),
      'borderColor': const Color(0xFFFFB74D),
      'imagePath': 'assets/images/oil.png',
    },
    {
      'title': 'Meat & Fish',
      'color': const Color(0xFFFFEBEE),
      'borderColor': const Color(0xFFEF9A9A),
      'imagePath': 'assets/images/meat.png',
    },
    {
      'title': 'Bakery & Snacks',
      'color': const Color(0xFFF3E5F5),
      'borderColor': const Color(0xFFCE93D8),
      'imagePath': 'assets/images/snaks.png',
    },
    {
      'title': 'Dairy & Eggs',
      'color': const Color(0xFFFFFDE7),
      'borderColor': const Color(0xFFFFEE58),
      'imagePath': 'assets/images/egg.png',
    },
    {
      'title': 'Beverages',
      'color': const Color(0xFFE3F2FD),
      'borderColor': const Color(0xFF90CAF9),
      'imagePath': 'assets/images/drink.png',
    },
  ];

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bool isSearching = _searchQuery.isNotEmpty;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 24),
              const Text(
                'Find Products',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFF2F3F2),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextField(
                  controller: _searchController,
                  onChanged: (val) => setState(() => _searchQuery = val),
                  decoration: InputDecoration(
                    hintText: 'Search Store',
                    hintStyle: TextStyle(color: Colors.grey[400], fontSize: 15),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey[400],
                      size: 22,
                    ),
                    suffixIcon: isSearching
                        ? IconButton(
                            icon: const Icon(Icons.close, color: Colors.grey),
                            onPressed: () {
                              _searchController.clear();
                              setState(() => _searchQuery = '');
                            },
                          )
                        : null,
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(vertical: 14),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: isSearching
                    ? _buildSearchResults()
                    : _buildCategoriesGrid(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSearchResults() {
    if (searchResults.isEmpty) {
      return const Center(
        child: Text(
          'No products found',
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
      );
    }
    return GridView.builder(
      itemCount: searchResults.length,
      physics: const BouncingScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 20,
        childAspectRatio: 173.32 / 248.51,
      ),
      itemBuilder: (context, index) => _buildProductCard(searchResults[index]),
    );
  }

  Widget _buildCategoriesGrid() {
    return GridView.builder(
      itemCount: categories.length,
      physics: const BouncingScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 0.9,
      ),
      itemBuilder: (context, index) => _buildCategoryCard(categories[index]),
    );
  }

  Widget _buildCategoryCard(Map<String, dynamic> cat) {
    final name = cat['title'].toString().replaceAll('\n', ' ');
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => CategoryScreen(
              categoryName: name,
              products: categoryProducts[name] ?? [],
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: cat['color'],
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: cat['borderColor'], width: 1.5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 105,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Image.asset(
                  cat['imagePath'],
                  fit: BoxFit.contain,
                  errorBuilder: (_, __, ___) => Icon(
                    Icons.image_not_supported_outlined,
                    size: 60,
                    color: cat['borderColor'],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                cat['title'],
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                  height: 1.4,
                ),
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }

  Widget _buildProductCard(Map<String, String> p) {
    final imgPath = p['imageUrl'] ?? '';
    final isNetwork = imgPath.startsWith('http');

    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: const Color(0xffE2E2E2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: Center(
              child: isNetwork
                  ? Image.network(
                      imgPath,
                      fit: BoxFit.contain,
                      errorBuilder: (_, __, ___) => const Icon(
                        Icons.image_not_supported,
                        size: 50,
                        color: Colors.grey,
                      ),
                    )
                  : Image.asset(
                      imgPath,
                      fit: BoxFit.contain,
                      errorBuilder: (_, __, ___) => const Icon(
                        Icons.image_not_supported,
                        size: 50,
                        color: Colors.grey,
                      ),
                    ),
            ),
          ),
          const SizedBox(height: 8),

          Text(
            p['name'] ?? '',
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 4),

          Text(
            p['weight'] ?? '',
            style: const TextStyle(color: Color(0xff7C7C7C), fontSize: 12),
          ),
          const SizedBox(height: 8),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                p['price'] ?? '',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                width: 35,
                height: 35,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: const Color(0xff53B175),
                ),
                child: const Icon(Icons.add, color: Colors.white, size: 18),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

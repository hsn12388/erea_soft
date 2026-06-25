import 'package:flutter/material.dart';
import '../category_screen/category_screen.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  final TextEditingController _searchController = TextEditingController();

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
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 24),
              // Title
              const Text(
                'Find Products',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20),
              // Search Bar
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFF2F3F2),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    hintText: 'Search Store',
                    hintStyle: TextStyle(color: Colors.grey[400], fontSize: 15),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey[400],
                      size: 22,
                    ),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(vertical: 14),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Categories Grid
              Expanded(
                child: GridView.builder(
                  itemCount: categories.length,
                  physics: const BouncingScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    childAspectRatio: 0.9,
                  ),
                  itemBuilder: (context, index) {
                    return _buildCategoryCard(categories[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryCard(Map<String, dynamic> cat) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => CategoryScreen(
              categoryName: cat['title'].toString().replaceAll('\n', ' '),
              products: [], // هنحط المنتجات هنا
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
            // Product image
            SizedBox(
              height: 105,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Image.asset(
                  cat['imagePath'],
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    // Fallback icon if image not found
                    return Icon(
                      Icons.image_not_supported_outlined,
                      size: 60,
                      color: cat['borderColor'],
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 10),
            // Category name
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
}

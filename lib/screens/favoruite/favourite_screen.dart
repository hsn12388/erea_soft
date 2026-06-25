import 'package:flutter/material.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  List<Map<String, dynamic>> favItems = [
    {
      'id': 1,
      'name': 'Sprite Can',
      'weight': '330ml',
      'price': 1.50,
      'quantity': 1,
      'image': 'assets/images/f1.png',
    },
    {
      'id': 2,
      'name': 'Diet Coke',
      'weight': '355ml',
      'price': 1.99,
      'quantity': 1,
      'image': 'assets/images/f2.png',
    },
    {
      'id': 3,
      'name': 'Apple & Grape Juice',
      'weight': '2L',
      'price': 15.50,
      'quantity': 1,
      'image': 'assets/images/f3.png',
    },
    {
      'id': 4,
      'name': 'Coca Cola Can',
      'weight': '325ml',
      'price': 4.99,
      'quantity': 1,
      'image': 'assets/images/f4.png',
    },
    {
      'id': 5,
      'name': 'Pepsi Can',
      'weight': '330ml',
      'price': 4.99,
      'quantity': 1,
      'image': 'assets/images/f5.png',
    },
  ];

  void updateQuantity(int index, int delta) {
    setState(() {
      favItems[index]['quantity'] = (favItems[index]['quantity'] + delta).clamp(
        0,
        100,
      );
    });
  }

  void removeItem(int index) {
    setState(() {
      favItems.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Favourite',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: favItems.isEmpty
                ? const Center(child: Text('No favourites yet'))
                : ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    itemCount: favItems.length,
                    itemBuilder: (context, index) {
                      final item = favItems[index];

                      return Container(
                        margin: const EdgeInsets.only(bottom: 24),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 75, 
                              height:
                                  95,
                              decoration: BoxDecoration(
                                color: Color(
                                  0xFFF5F5F5,
                                ), 
                                borderRadius: BorderRadius.circular(12),
                              ),

                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(
                                    12.0,
                                  ), 
                                  child: Image.asset(
                                    item['image'],
                                    width: 32, 
                                    height: 56,
                                    fit: BoxFit.contain, 
                                  ),
                                ),
                              ),
                            ),

                            const SizedBox(width: 14),

                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    item['name'],
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black87,
                                    ),
                                  ),
                                  const SizedBox(height: 6),
                                  Text(
                                    '${item['weight']}, Price',
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.grey[500],
                                    ),
                                  ),
                                  const SizedBox(height: 14),

                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Colors.grey[300]!,
                                          ),
                                        ),
                                        child: IconButton(
                                          icon: const Icon(
                                            Icons.remove,
                                            size: 18,
                                          ),
                                          onPressed: () =>
                                              updateQuantity(index, -1),
                                          padding: const EdgeInsets.all(8),
                                          constraints: const BoxConstraints(),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 16,
                                        ),
                                        child: Text(
                                          '${item['quantity']}',
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Color(0xFF53B175),
                                          ),
                                          color: Color(
                                            0xFF53B175,
                                          ).withOpacity(0.1),
                                        ),
                                        child: IconButton(
                                          icon: Icon(
                                            Icons.add,
                                            size: 18,
                                            color: Color(0xFF53B175),
                                          ),
                                          onPressed: () =>
                                              updateQuantity(index, 1),
                                          padding: const EdgeInsets.all(8),
                                          constraints: const BoxConstraints(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                GestureDetector(
                                  onTap: () => removeItem(index),
                                  child: Icon(
                                    Icons.close,
                                    color: Colors.grey[400],
                                    size: 22,
                                  ),
                                ),
                                const SizedBox(
                                  height: 36,
                                ),
                                Text(
                                  '\$${item['price'].toStringAsFixed(2)}',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
          ),

          if (favItems.isNotEmpty)
            Padding(
              padding: const EdgeInsets.all(16),
              child: SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF53B175),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 0,
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Add All To Cart',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

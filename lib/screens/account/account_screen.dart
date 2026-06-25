import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; 

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  final List<Map<String, dynamic>> menuItems = [
    {'svg': 'assets/icons/aa1.svg', 'title': 'Orders'}, 
    {'svg': 'assets/icons/aa2.svg', 'title': 'My Details'}, 
    {
      'svg': 'assets/icons/aa3.svg',
      'title': 'Delivery Address',
    },
    {
      'svg': 'assets/icons/aa4.svg',
      'title': 'Payment Methods',
    }, 
    {
      'svg': 'assets/icons/Promo Cord icon.svg',
      'title': 'Promo Code',
    }, 
    {'svg': 'assets/icons/aa6.svg', 'title': 'Notifications'}, 
    {'svg': 'assets/icons/aa7.svg', 'title': 'Help'}, 
    {'svg': 'assets/icons/aa8.svg', 'title': 'About'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(height: 30),

              Row(
                children: [
                  Container(
                    width: 72,
                    height: 72,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Color(0xFF53B175).withOpacity(0.2),
                        width: 2,
                      ),
                      image: DecorationImage(
                        image: AssetImage('assets/images/a1.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 18),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Afsar Hossen',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                            SizedBox(width: 8),
                            Icon(Icons.edit, size: 18, color: Colors.grey[500]),
                          ],
                        ),
                        SizedBox(height: 5),
                        Text(
                          'lmshuvo97@gmail.com',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[500],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 35),

              Column(
                children: [
                  ...menuItems.asMap().entries.map((entry) {
                    int index = entry.key;
                    Map<String, dynamic> item = entry.value;

                    return Column(
                      children: [
                        _buildSvgMenuItem(
                          svgPath: item['svg'], 
                          title: item['title'],
                          onTap: () {},
                        ),
                        if (index < menuItems.length - 1)
                          Divider(
                            height: 1,
                            thickness: 0.5,
                            indent: 45,
                            endIndent: 0,
                            color: Colors.grey[200],
                          ),
                      ],
                    );
                  }).toList(),
                ],
              ),

              SizedBox(height: 30),

              GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      title: Text(
                        'Logout',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      content: Text('Are you sure you want to leave?'),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text('Cancel'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Logout',
                            style: TextStyle(
                              color: Colors.red[700],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Color(0xFFFAFAFA),
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.grey[200]!, width: 1.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.exit_to_app_rounded,
                        color: Color(0xFF53B175),
                        size: 22,
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Log Out',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF53B175),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSvgMenuItem({
    required String svgPath, 
    required String title,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15),
        child: Row(
          children: [
            SizedBox(
              width: 26,
              height: 26,
              child: SvgPicture.asset(
                svgPath,
                width: 24,
                height: 24,
                colorFilter: ColorFilter.mode(Colors.black87, BlendMode.srcIn),
                fit: BoxFit.contain,
              ),
            ),

            SizedBox(width: 18),

            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

            Icon(Icons.chevron_right, color: Colors.grey[400], size: 22),
          ],
        ),
      ),
    );
  }
}

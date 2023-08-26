import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/common/button_navbar.dart';
import 'package:flutter_application_1/presentation/main/home/category.dart';
import 'package:flutter_application_1/presentation/pages/services_page.dart';
import 'package:flutter_application_1/presentation/pages/contacts_page.dart';
import 'package:flutter_application_1/theme.dart';
import 'package:iconsax/iconsax.dart';
import '../../widgets/job_card.dart';

class HomePage extends StatefulWidget {
  final double heightBar;

  const HomePage({Key? key, required this.heightBar}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final TextEditingController _searchController = TextEditingController();

  int _selectedCategoryIndex = 0;
  final List<String> _categories = ['', 'Google', 'Campaign', 'Facebook'];

  void _onCategoryTap(int index) {
    setState(() {
      _selectedCategoryIndex = index;
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    if (index == 0) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(
            heightBar: 12,
          ),
        ),
      );
    } else if (index == 1) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const ServicesPage()),
      );
    } else if (index == 2) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const ContactsPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'DIGIMAYA',
            style: AppText.titleTextStyle,
          ),
        ),
        body: ListView(
          controller: ScrollController(keepScrollOffset: true),
          // Use ListView here
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: AppColor.neutral500.value,
                        width: 0.1,
                      ),
                    ),
                    child: TextField(
                      controller: _searchController,
                      onChanged: (query) {
                        setState(() {});
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Cari artikel...',
                        suffixIcon: _searchController.text.isNotEmpty
                            ? IconButton(
                                icon: const Icon(
                                  Icons.close,
                                  color: Colors.black,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _searchController.clear();
                                  });
                                },
                              )
                            : const Icon(
                                Icons.search,
                                color: Colors.black,
                              ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: _categories.asMap().entries.map((entry) {
                          print(entry.key);
                          int index = entry.key;
                          String caption = entry.value;
                          return Category(
                            caption: caption,
                            index: index,
                            icon: index >= 0
                                ? const Icon(Iconsax.play,
                                    size: 14, color: Colors.white)
                                : null,
                            isSelected: _selectedCategoryIndex == index,
                            onTap: (key) => {_onCategoryTap(index)},
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Jobcard(
                    searchQuery: _searchController.text,
                    selectedCategoryQuery: _categories[_selectedCategoryIndex],
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavBar(
          selectedIndex: _selectedIndex,
          onItemTapped: _onItemTapped,
        ),
      ),
    );
  }
}

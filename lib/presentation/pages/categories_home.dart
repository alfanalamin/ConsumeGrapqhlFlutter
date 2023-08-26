import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/common/button_navbar.dart';
import 'package:flutter_application_1/presentation/pages/contacts_page.dart';
import 'package:flutter_application_1/presentation/pages/home_page.dart';
import 'package:flutter_application_1/presentation/pages/services_page.dart';
import 'package:flutter_application_1/theme.dart';

import '../common/slide_transition.dart';

class CategoriesHome extends StatefulWidget {
  final dynamic post;

  const CategoriesHome({Key? key, required this.post}) : super(key: key);
  
  @override
  State<CategoriesHome> createState() => _CategoriesHomeState();
}

class _CategoriesHomeState extends State<CategoriesHome> {
  final int _selectedIndex = 0;

  void _onItemTapped(int index) {
    if (index == 0) {
      Navigator.pushReplacement(
        context,
        CustomSlidePageRoute(
          page: const HomePage(heightBar: 12),
        ),
      );
    } else if (index == 1) {
      Navigator.pushReplacement(
        context,
        CustomSlidePageRoute(page: const ServicesPage()),
      );
    } else if (index == 2) {
      Navigator.pushReplacement(
        context,
        CustomSlidePageRoute(page: const ContactsPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.more_horiz,
                color: Colors.black,
              ),
            ),
          ],
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Container(
          color: const Color(0xFFF2F4F5),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          (widget.post.thumbnailSrc?.md ?? ''),
                        ),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20),
                        Text(
                          (widget.post.title ?? ''),
                          style: AppText.smallTextStyle,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavBar(
          selectedIndex: _selectedIndex,
          onItemTapped: _onItemTapped,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/common/button_navbar.dart';
import 'package:flutter_application_1/presentation/pages/home_page.dart';
import 'package:flutter_application_1/theme.dart';


import '../common/slide_transition.dart';
import 'contacts_page.dart';

class ServicesPage extends StatefulWidget {
  const ServicesPage({Key? key});

  @override
  State<ServicesPage> createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
  int _selectedIndex = 1;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
       if (index == 0) {
      Navigator.push(
        context,
        CustomSlidePageRoute(
          page: const HomePage(heightBar: 12),
        ),
      );
    } else if (index == 1) {
      Navigator.push(
        context,
        CustomSlidePageRoute(page: const ServicesPage()),
      );
    } else if (index == 2) {
      Navigator.push(
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
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(
              'DIGIMAYA',
              style: AppText.titleTextStyle,
          ),
        ),
        body: ListView(
          children:  [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Google Ads Agency',
                        style: AppText.titleTextStyle,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Meditation is a practice that has been used for centuries to promote relaxation and reduce stress. In recent years, meditation has gained popularity as a tool for improving mental health and well-being. Research has shown that meditation can be an effective way to reduce stress and improve overall quality of life.\n\n'
                        'One of the main benefits of meditation is its ability to reduce stress. During meditation, individuals focus on their breath and let go of thoughts and distractions. This can help reduce the production of stress hormones like cortisol and adrenaline, leading to a feeling of relaxation and calmness.\n\n'
                        'Additionally, meditation has been shown to improve emotional well-being. It can help reduce symptoms of anxiety and depression, and improve overall mood. This is because meditation can increase activity in the prefrontal cortex, which is associated with positive emotions.\n\n'
                        'Meditation can also improve cognitive function. It can increase attention span, memory, and mental clarity, which can improve overall productivity and performance. Additionally, meditation can improve sleep quality, which is essential for good mental health.',
                        style: AppText.smallTextStyle,
                      ),
                      const SizedBox(height: 20),
                      // gambar 
                      const Image(
                        image: AssetImage('assets/images/Cover3.png'),
                      ),
                    ],
                  ),
                ),
              ],
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

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/services_page.dart';
import 'package:flutter_application_1/theme.dart';
import '../widgets/job_card.dart';
import 'contacts_page.dart';

class HomePage extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    if (index == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    } else if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ServicesPage()),
      );
    } else if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ContactsPage()),
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
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
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
                  decoration: InputDecoration(
                      border: InputBorder.none,
                    hintText: 'Search articles...',
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              // Add your additional widgets here
            const SizedBox(height: 12),
                Container(
                  child: const Column(   
                    children: [
                      Jobcard(
                        imageUrl: 'assets/images/Cover.png',
                        title: 'The Benefits of Meditation for Stress Reduction',
                        date: '6 Mar, 2023',
                        description:
                        'Meditation is a practice that has been used for centuries to promote relaxation and reduce stress. In recent years, meditation has gained popularity as a tool for improving mental health and well-being. Research has shown that meditation can be an effective way to reduce stress and improve overall quality of life.\n\n'
                        'One of the main benefits of meditation is its ability to reduce stress. During meditation, individuals focus on their breath and let go of thoughts and distractions. This can help reduce the production of stress hormones like cortisol and adrenaline, leading to a feeling of relaxation and calmness.\n\n'
                        'Additionally, meditation has been shown to imp rove emotional well-being. It can help reduce symptoms of anxiety and depression, and improve overall mood. This is because meditation can increase activity in the prefrontal cortex, which is associated with positive emotions.\n\n'
                        'Meditation can also improve cognitive function. It can increase attention span, memory, and mental clarity, which can improve overall productivity and performance. Additionally, meditation can improve sleep quality, which is essential for good mental health.'
                      ),
                      SizedBox(height: 20),
                      Jobcard(
                        imageUrl: 'assets/images/Cover4.png',
                        title: 'The Joys and Challenges of Traveling: A Guide to Exploring the World',
                        date: '6 Mar, 2023',
                        description:
                            'Traveling is a wonderful way to explore new places, meet new people, and broaden your horizons. Whether you'
                            're traveling for pleasure, adventure, or business, there'
                            's something exhilarating about leaving your everyday life behind and venturing into the unknown.\n\n'
                            'However, traveling can also be challenging. From navigating unfamiliar cities to dealing with language barriers and cultural differences, it can sometimes feel like a daunting task. But with a little preparation and a willingness to be flexible and adaptable, you can make the most of your travels and create unforgettable memories.\n\n'
                            'Here are some tips to help you make the most of your travels;\n\n'
                            'Research your destination\n'
                            'Before you go, do some research on your destination. Read travel guides, look up reviews of hotels and restaurants, and learn about the local customs and culture. This will help you avoid any surprises and give you a better understanding of the place you’re visiting.\n\n'
                            'Pack smart\n'
                            'Pack light and bring only     what you need. This will make it easier to move around and reduce the risk of lost or stolen luggage. Don’t forget to bring essentials like a passport, travel documents, and any necessary medications.\n\n'
                            'Stay flexible\n'
                            'Travel plans can change unexpectedly, so be prepared to be flexible. Don’t over-schedule your trip, and be willing to change your itinerary if necessary. This will allow you to take advantage of unexpected opportunities and enjoy your travels more.\n\n'
                            'Embrace the local culture\n'
                            'Immerse yourself in the local culture by trying new foods, learning the language, and engaging with the local people. This will help you gain a deeper appreciation for the place you’re visiting and create memorable experiences.\n\n'
                            'Stay safe\n'
                            'Traveling can be exciting, but it’s important to stay safe. Be aware of your surroundings, avoid risky situations, and follow local laws and customs. Don’t take unnecessary risks, and always have a plan in case of an emergency.',
                      ),
                      SizedBox(height: 20),
                      Jobcard(
                        imageUrl: 'assets/images/Cover 2.png',
                        title: 'The Importance of Sleep for Overall Health and Well-being',
                        date: '6 Mar, 2023',
                        description:
                            'Many people often sacrifice sleep to meet the demands of their busy lives, but this can have...',
                      ),
                      SizedBox(height: 20),
                      Jobcard(
                        imageUrl: 'assets/images/Cover3.png',
                        title: 'How to Find Career Fulfillment in Today’s World',
                        date: '6 Mar, 2023',
                        description:
                            'Meditation is a practice that has been used for centuries to promote relaxation and reduce...',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Stack(
          children: [
            BottomNavigationBar(
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
              selectedItemColor: Colors.black,
              items: const [
                BottomNavigationBarItem(
                  //icon di ganti sama gambar dari assets
                  icon: ImageIcon(
                    AssetImage('assets/images/home-2.png'),
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/element-equal.png'),
                  ),
                  label: 'Services',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/send-2.png'),
                  ),
                  label: 'Contact',
                ),
              ],
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 2,
                    width: MediaQuery.of(context).size.width / 4,
                    color:
                        _selectedIndex == 0 ? Colors.black : Colors.transparent,
                  ),
                  Container(
                    height: 2,
                    width: MediaQuery.of(context).size.width / 4,
                    color:
                        _selectedIndex == 1 ? Colors.black : Colors.transparent,
                  ),
                  Container(
                    height: 2,
                    width: MediaQuery.of(context).size.width / 4,
                    color:
                        _selectedIndex == 2 ? Colors.black : Colors.transparent,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
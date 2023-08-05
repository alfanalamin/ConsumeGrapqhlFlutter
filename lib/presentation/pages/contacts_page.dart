import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/common/button_navbar.dart';
import 'package:flutter_application_1/theme.dart';

import 'home_page.dart';
import 'services_page.dart';

class ContactsPage extends StatefulWidget {
  const ContactsPage({super.key});

  @override
  State<ContactsPage> createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  int _selectedIndex = 2;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (index == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomePage(heightBar: 18,)),
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
            style: AppText.titleTextStyle
          ),
        ),
        body: ListView(
          children:  [
            Column(
              children: [
                const SizedBox(height: 30),
                Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Contact Us',
                        style: AppText.titleTextStyle,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Nama:',
                        style: AppText.smallTextStyle
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(color: Colors.transparent,
                            ),
                          ),
                           focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          hintText: 'Masukkan Nama Lenkap',
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Email:',
                        style: AppText.smallTextStyle
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(color: Colors.transparent,
                            ),
                          ),
                           focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          hintText: 'email@domain.com',
                          
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Nomor WhatsApps:',
                        style: AppText.smallTextStyle
                      ),
                      const SizedBox(height: 10),
                      TextField(  
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(color: Colors.transparent,
                            ),
                          ),
                           focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                            hintText: 'xxxxxxxxx',
                            prefixIcon: Padding(
                              padding: const EdgeInsets.only(left: 20, right: 10),
                              child: Image.asset('assets/images/Country.png'),
                            ),  
                            prefixIconConstraints: const BoxConstraints(
                              minWidth: 0,
                              minHeight: 0,
                              ), // Atur ukuran ikon di sini
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Website:',
                        style: AppText.smallTextStyle
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(color: Colors.transparent,
                            ),
                          ),
                           focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          hintText: 'https://',
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(      
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                            ),
                          ),
                          hintText: 'Kirim',
                          fillColor:Colors.black, // Warna latar belakang TextField
                          filled:true, // Mengisi latar belakang TextField dengan warna // Warna ikon
                          hintStyle: const TextStyle(
                            color: Colors.white, // Mengubah hintStyle
                            ),
                        ),
                        textAlign: TextAlign.center, 
                      ),
                    ],
                  ),
                )    
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
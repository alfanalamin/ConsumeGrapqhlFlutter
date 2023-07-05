import 'package:flutter/material.dart';

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
        body: ListView(
          children:  [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'DIGIMAYA',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'inter',
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Contact Us',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'inter',
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Nama:',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'inter',
                        ),
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
                      const Text(
                        'Email:',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'inter',
                        ),
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
                      const Text(
                        'Nomor WhatsApps:',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'inter',
                        ),
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
                      const Text(
                        'Website:',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'inter',
                        ),
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
        bottomNavigationBar: Stack(
          children: [
            BottomNavigationBar(
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
              selectedItemColor: Colors.black,
              items: const [
                BottomNavigationBarItem(
                  //icon di ganti sama gmabar dari assets
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
                    width: MediaQuery.of(context).size.width / 5,
                    color:
                        _selectedIndex == 0 ? Colors.black : Colors.transparent,
                  ),
                  Container(
                    height: 2,
                    width: MediaQuery.of(context).size.width / 5,
                    color:
                        _selectedIndex == 1 ? Colors.black : Colors.transparent,
                  ),
                  Container(
                    height: 2,
                    width: MediaQuery.of(context).size.width / 5,
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
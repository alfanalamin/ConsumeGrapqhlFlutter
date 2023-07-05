import 'package:flutter/material.dart';


class CategoriesHome extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String date;
  final String description;

  CategoriesHome({
    required this.imageUrl,
    required this.title,
    required this.date,
    required this.description,
  });

  @override
  State<CategoriesHome> createState() => _CategoriesHomeState();
}

class _CategoriesHomeState extends State<CategoriesHome> {
    int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
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
                  icon: const Icon(Icons.arrow_back,
                  color: Colors.black,
                  ),
                ),
                actions : [
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
          color: Color(0xFFF2F4F5),
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
                        image: AssetImage(
                          widget.imageUrl,
                        ),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20),
                        Text(
                          widget.title,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          widget.date,
                          style: const TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          widget.description,
                          style: const TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),      
                ],
              ),
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

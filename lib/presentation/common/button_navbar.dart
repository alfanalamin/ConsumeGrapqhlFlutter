import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;

  // ignore: use_key_in_widget_constructors
  const BottomNavBar({
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BottomNavigationBar(
          currentIndex: widget.selectedIndex,
          onTap: widget.onItemTapped,
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
                width: MediaQuery.of(context).size.width / 4,
                color: widget.selectedIndex == 0
                    ? Colors.black
                    : Colors.transparent,
              ),
              Container(
                height: 2,
                width: MediaQuery.of(context).size.width / 4,
                color: widget.selectedIndex == 1
                    ? Colors.black
                    : Colors.transparent,
              ),
              Container(
                height: 2,
                width: MediaQuery.of(context).size.width / 4,
                color: widget.selectedIndex == 2
                    ? Colors.black
                    : Colors.transparent,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:foodball_kit/explore.dart';
import 'package:foodball_kit/home.dart';
import 'package:foodball_kit/profile.dart';
import 'package:foodball_kit/screen3.dart';
import 'package:foodball_kit/standingscreen.dart';

class Navebar extends StatefulWidget {
  const Navebar({super.key});

  @override
  State<Navebar> createState() => _NavebarState();
}
final screens = [Screen3(),Explore(),Standingscreen(),Profile()];


int currentIndex = 0;

class _NavebarState extends State<Navebar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        
        type: BottomNavigationBarType
            .fixed, // Ensure fixed mode for label visibility
        selectedItemColor: Colors.blue, // Set selected label & icon color
        unselectedItemColor: Colors.black,

        backgroundColor: Colors.white,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
         
            icon: ImageIcon(
              AssetImage('assets/Home.png'),
              color: Colors.black,
              size: 30,
            ),
            label: 'Home',
    activeIcon:  ImageIcon(
              AssetImage('assets/Home.png'),
              color: Colors.blue,
              size: 30,
            ),
          ),

          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/Discovery.png'),
              color: Colors.black,
              size: 30,
              
            ),
            label: 'expore',
            activeIcon:  ImageIcon(
              AssetImage('assets/Discovery.png'),
              color: Colors.blue,
              size: 30,
            ),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/Chart.png'),
              color: Colors.black,
              size: 30,
            ),
            label: 'chart',
             activeIcon:  ImageIcon(
              AssetImage('assets/Chart.png'),
              color: Colors.blue,
              size: 30,
            ),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/Profile.png'),
              color: Colors.black,
              size: 30,
            ),
            label: 'profile',
             activeIcon:  ImageIcon(
              AssetImage('assets/Profile.png'),
              color: Colors.blue,
              size: 30,
            ),
          ),
       
        ],
      ),
      body: screens[currentIndex]
      
    );
  }
}

    
  

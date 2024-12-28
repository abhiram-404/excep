import 'package:flutter/material.dart';
import 'package:untitled_1/sample_project/Pat/Departments.dart';

import 'PatAbout.dart';
import 'PatProfile.dart';
import 'TopDocs.dart';
import 'loginpat.dart';

class PatHomePg extends StatefulWidget {
  @override
  _PatHomePgState createState() => _PatHomePgState();
}

class _PatHomePgState extends State<PatHomePg> {
  int _currentIndex = 0;

  final String cardiologistIcon = 'asset/icon/heart.png';
  final String orthopedicIcon = 'asset/icon/bone.png';
  final String dentistIcon = 'asset/icon/tooth.png';

  // List of screens for navigation
  final List<Widget> _screens = [
    HomeScreen(),      // Home screen
    TopDocs(),   // Doctors screen
    PatProfile(),   // Profile screen
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {},
              child: UserAccountsDrawerHeader(
                accountName: Text(
                  'John Doe',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                accountEmail: Text(
                  "99********",
                  style: TextStyle(fontSize: 14, color: Colors.white70),
                ),
                currentAccountPicture: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.teal.shade400,
                  child: Icon(Icons.person, size: 40, color: Colors.white),
                ),
                decoration: BoxDecoration(
                  color: Colors.teal.shade700,
                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(25)),
                ),
              ),
            ),
            // Drawer Items as Tiles
            Expanded(
              child: ListView(
                children: [
                  _buildTile(
                    icon: Icons.settings, title: 'Settings',
                    color: Colors.teal.shade100,
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  _buildTile(
                    icon: Icons.report,
                    title: 'About us',
                    color: Colors.teal.shade100,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PatAbout()),
                      );
                    },
                  ),
                  Divider(),
                  _buildTile(
                    icon: Icons.exit_to_app,
                    title: 'Logout',
                    color: Colors.red.shade500,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPat()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: _screens[_currentIndex], // Display the current screen based on selected index
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped, // Handles tap to navigate
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.teal.shade700,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Doctors',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  // Method to handle tab selection and navigate to respective screens
  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index; // Update the selected index
    });
  }

  Widget _buildCategoryItem(String iconPath, String title) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.teal.shade50,
          child: Image.asset(
            iconPath,
            width: 30,
            height: 30,
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(height: 8),
        Text(
          title,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }

  Widget _buildDoctorCard(
      String name, String specialization, double price, double rating) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.teal.shade100,
                  child: Icon(Icons.person, size: 30, color: Colors.teal),
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text(specialization),
                  ],
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                print("Booking for $name");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text(
                'Book Now',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Home screen class
class HomeScreen extends StatelessWidget {
  final String cardiologistIcon = 'asset/icon/heart.png';
  final String orthopedicIcon = 'asset/icon/bone.png';
  final String dentistIcon = 'asset/icon/tooth.png';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Top Section (Modified Container)
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.teal.shade700, Colors.teal.shade500, Colors.teal.shade300],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Builder(
                      builder: (context) {
                        return IconButton(
                          icon: Icon(Icons.menu, color: Colors.white),
                          onPressed: () {
                            Scaffold.of(context).openDrawer();
                          },
                        );
                      },
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "Find your desired",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  "Doctor Right Now!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Search',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        // Rest of the Interface
        Expanded(
          child: Column(
            children: [
              // Categories Section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Categories',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Departments()),
                        );
                      },
                      child: Text(
                        'See all',
                        style: TextStyle(color: Colors.teal),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildCategoryItem(cardiologistIcon, 'Cardiologist'),
                    _buildCategoryItem(orthopedicIcon, 'Orthopedic'),
                    _buildCategoryItem(dentistIcon, 'Dentist'),
                  ],
                ),
              ),

              // Top Doctors Section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Top Doctors',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TopDocs()),
                        );
                        },
                      child: Text(
                        'See all',
                        style: TextStyle(color: Colors.teal),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  children: [
                    _buildDoctorCard(
                      'Dr. Jenny Roy',
                      'Heart Surgeon',
                      300,
                      5.0,
                    ),
                    _buildDoctorCard(
                      'Dr. Zak Wolf',
                      'Cardiologist',
                      350,
                      4.8,
                    ),
                    _buildDoctorCard(
                      'Dr. Tanisha Khan',
                      'Orthopedic',
                      250,
                      4.8,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCategoryItem(String iconPath, String title) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.teal.shade50,
          child: Image.asset(
            iconPath,
            width: 30,
            height: 30,
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(height: 8),
        Text(
          title,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }

  Widget _buildDoctorCard(
      String name, String specialization, double price, double rating) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.teal.shade100,
                  child: Icon(Icons.person, size: 30, color: Colors.teal),
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text(specialization),
                  ],
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                print("Booking for $name");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text(
                'Book Now',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


Widget _buildDrawerTile({required IconData icon, required String title, required VoidCallback onTap}) {
  return ListTile(
    leading: Icon(icon, color: Colors.teal.shade700),
    title: Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black87)),
    onTap: onTap,
  );
}

Widget _buildTile({
  required IconData icon,
  required String title,
  required Color color,
  required VoidCallback onTap,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
    child: Card(
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: Icon(icon, size: 30, color: Colors.teal.shade700),
        title: Text(
          title,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        onTap: onTap,
      ),
    ),
  );
}


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled_1/sample_project/Doc/AboutUs.dart';
import 'package:untitled_1/sample_project/Doc/logindoc.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:untitled_1/sample_project/Pat/loginpat.dart';
import 'package:untitled_1/sample_project/Doc/passwordchange.dart';
import 'package:untitled_1/sample_project/Doc/profilepg.dart';

class DocHomepg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // Gradient Background Covering the Entire Screen
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue.shade500, Colors.blue.shade300, Colors.blue.shade100],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent, // Makes Scaffold Background Transparent
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade500, // AppBar background color
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.white, // Change the drawer icon (3 lines) color
            size: 28,            // Adjust the size if needed
          ),
          title: AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(
                'WELCOME',
                textStyle: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                speed: Duration(milliseconds: 200), // Typing speed
              ),
            ],
            isRepeatingAnimation: true,
            repeatForever: true,
          ),
          centerTitle: true, // Center align the title
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications, color: Colors.white),
            ),
          ],
        ),

        drawer: Drawer(
          child: Column(
            children: [
              // Profile Header
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Profile()),
                  );
                },
                child: UserAccountsDrawerHeader(
                  accountName: Text(
                    'Dr. John Doe',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  accountEmail: Text(
                    'johndoe@email.com',
                    style: TextStyle(fontSize: 14, color: Colors.white70),
                  ),
                  currentAccountPicture: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.blue.shade400,
                    child: Icon(Icons.person, size: 40, color: Colors.white),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade700,
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
                      color: Colors.blue.shade100,
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    _buildTile(
                      icon: Icons.report,
                      title: 'About us',
                      color: Colors.blue.shade100,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => About()),
                        );
                      },
                    ),
                _buildTile(
                  icon: Icons.lock_outlined,
                  title: 'Change password',
                  color: Colors.blue.shade100,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Password()),
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
                          MaterialPageRoute(builder: (context) => LoginDoc()),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: kToolbarHeight + 10),
                // Doctor's Tile
                Container(
                  padding: EdgeInsets.all(16),
                  margin: EdgeInsets.symmetric(vertical: 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 5,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.grey.shade300,
                        child: Icon(
                          Icons.person,
                          size: 40,
                          color: Colors.grey.shade600,
                        ),
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dr. John Doe',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Cardiology Department',
                              style: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "IN",
                              style: TextStyle(
                                color: CupertinoColors.systemGreen,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              'Location: Floor 3, Room 24',
                              style: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          'Time In',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 10), // Adjusted space between "Patient Bookings" and next section
                // Section for Patient Bookings
                Text(
                  'Patient Bookings',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 8),
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 5,
                            offset: Offset(2, 2),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.green.shade100,
                            child: Icon(
                              Icons.assignment_rounded,
                              size: 30,
                              color: Colors.green,
                            ),
                          ),
                          SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Patient: John Smith',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Date: 12 Dec 2024, Time: 10:00 AM',
                                  style: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Icon(Icons.chevron_right, color: Colors.grey.shade600),
                        ],
                      ),
                    );
                  },
                ),
                SizedBox(height: 20), // Additional space to push the health tips section higher
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _dashboardTile(BuildContext context,
      {required String title,
        required String value,
        required IconData icon,
        required Color color,
        required Color iconColor,
      }) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 4),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 5,
              offset: Offset(2, 2),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 30, color: iconColor),
            SizedBox(height: 8),
            Text(
              value,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 12,
                color: Colors.black54,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawerTile({required IconData icon, required String title, required VoidCallback onTap}) {
    return ListTile(
      leading: Icon(icon, color: Colors.blue.shade700),
      title: Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black87)),
      onTap: onTap,
    );
  }
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
        leading: Icon(icon, size: 30, color: Colors.blue.shade700),
        title: Text(
          title,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        onTap: onTap,
      ),
    ),
  );
}

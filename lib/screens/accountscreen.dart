import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 0.1),
            Center(
              child: Container(
                width: 123,
                height: 123,
                decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/Avatar.png',
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 4),
            const Padding(
              padding: EdgeInsets.only(left: 1.0),
              child: Center(
                child: Text(
                  "Name",
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 10,
                  height: 10,
                  decoration: const BoxDecoration(
                    color: Color(0xFFBBF246),
                    shape: BoxShape.circle,
                  ),
                  margin: const EdgeInsets.only(right: 8),
                ),
                const Text(
                  "Device connected",
                  style: TextStyle(
                    fontSize: 11.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 17),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
              decoration: BoxDecoration(
                color: const Color(0xFFF3F8FF),
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFFF3F8FF),
                      border: Border(
                        bottom: BorderSide(color: Colors.grey),
                      ),
                    ),
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        _buildImageRow('assets/Profile.png', "Profile", 0),
                        _buildImageRow('assets/devices.png', "Device", 1),
                        _buildImageRow(
                            'assets/notification 1.png', "Notification", 2),
                        _buildImageRow(
                            'assets/person-standing 1.png', "Accessibility", 3),
                        _buildImageRow(
                            'assets/communities 1.png', "Community", 4),
                        _buildImageRow('assets/setting2.png', "Settings", 5),
                      ]
                          .map((widget) => Container(
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(color: Colors.grey),
                                  ),
                                ),
                                child: widget,
                              ))
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(bottom: 30,left: 15,right: 15),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: BottomAppBar(
            color: const Color(0xFF0093E5),
            shape: const CircularNotchedRectangle(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  icon: Image.asset(
                    'assets/home-button.png',
                    color:
                        _selectedIndex == 0 ? const Color(0xFFBBF246) : Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 0;
                    });
                  },
                ),
                IconButton(
                  icon: Image.asset(
                    'assets/Variant2.png',
                    color:
                        _selectedIndex == 1 ? const Color(0xFFBBF246) : Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 1;
                    });
                  },
                ),
                IconButton(
                  icon: Image.asset(
                    'assets/bubble.png',
                    color:
                        _selectedIndex == 2 ? const Color(0xFFBBF246) : Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 2;
                    });
                  },
                ),
                IconButton(
                  icon: Image.asset(
                    'assets/Profilenav.png',
                    color:
                        _selectedIndex == 3 ? const Color(0xFFBBF246) : Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 3;
                    });
                  },
                ),
                IconButton(
                  icon: Image.asset(
                    'assets/Profilebar.png',
                    color:
                        _selectedIndex == 4 ? const Color(0xFFBBF246) : Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 4;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildImageRow(String imagePath, String label, int i) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Image.asset(imagePath, width: 35, height: 30),
          const SizedBox(width: 10),
          Text(label),
          const Spacer(),
          const Icon(
            Icons.arrow_forward_ios,
            size: 13,
            
          ),
          const SizedBox(width: 35,)
        ],
      ),
    );
  }
}

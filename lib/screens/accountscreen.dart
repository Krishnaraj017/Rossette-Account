// ignore: file_names
// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

import 'accountlist.dart';
import 'bottomnavigationbar.dart';
import 'device.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  int _selectedIndex = 0;

  void _handleSelectionChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.001),

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
            const SizedBox(height: 0.001),
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
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),

            DeviceStatusContainer(
              onSelectionChanged: _handleSelectionChanged,
              selectedIndex: _selectedIndex,
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
                  const AccountList(),
                ],
              ),
            ),

          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: _selectedIndex,
        onIndexChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
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
          const SizedBox(
            width: 35,
          )
        ],
      ),
    );
  }
}

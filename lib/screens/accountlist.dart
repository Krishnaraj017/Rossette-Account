import 'package:flutter/material.dart';

class AccountList extends StatefulWidget {
  const AccountList({Key? key}) : super(key: key);

  @override
  _AccountListState createState() => _AccountListState();
}

class _AccountListState extends State<AccountList> {
  final List<Map<String, dynamic>> _accountItems = [
    {'imagePath': 'assets/Profile.png', 'label': 'Profile', 'index': 0},
    {'imagePath': 'assets/devices.png', 'label': 'Device', 'index': 1},
    {
      'imagePath': 'assets/notification 1.png',
      'label': 'Notification',
      'index': 2
    },
    {
      'imagePath': 'assets/person-standing 1.png',
      'label': 'Accessibility',
      'index': 3
    },
    {'imagePath': 'assets/communities 1.png', 'label': 'Community', 'index': 4},
    {'imagePath': 'assets/setting2.png', 'label': 'Settings', 'index': 5},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFF3F8FF),
        border: Border(
          bottom: BorderSide(color: Colors.grey),
        ),
      ),
   child: ListView.separated(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return _buildImageRow(_accountItems[index]['imagePath'],
              _accountItems[index]['label'], _accountItems[index]['index']);
        },
        separatorBuilder: (context, index) => Divider(
          color: Color(0xFF8DBEFC),
          height: 1,
        ),
        itemCount: _accountItems.length,
      ),

      
    );
  }

  Widget _buildImageRow(String imagePath, String label, int index) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailPage(label)),
        );
      },
      child: Padding(
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
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final String label;

  const DetailPage(this.label, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(label),
      ),
      body: Center(
        child: Text('$label Details'),
      ),
    );
  }
}

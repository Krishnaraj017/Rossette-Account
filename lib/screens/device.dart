import 'package:flutter/material.dart';

class DeviceStatusContainer extends StatefulWidget {
  const DeviceStatusContainer({Key? key, required onSelectionChanged, required int selectedIndex}) : super(key: key);

  @override
  _DeviceStatusContainerState createState() => _DeviceStatusContainerState();
}

class _DeviceStatusContainerState extends State<DeviceStatusContainer> {
  bool _isDeviceConnected = true;

  void _toggleDeviceConnection() {
    setState(() {
      _isDeviceConnected = !_isDeviceConnected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 17),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
      decoration: BoxDecoration(
        color: const Color(0xFFF3F8FF),
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: _isDeviceConnected
                      ? const Color(0xFFBBF246)
                      : const Color(0xFFFF0000),
                  shape: BoxShape.circle,
                ),
                margin: const EdgeInsets.only(right: 8),
              ),
              Text(
                _isDeviceConnected ? "Device connected" : "Device disconnected",
                style: const TextStyle(
                  fontSize: 11.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: _toggleDeviceConnection,
            child: Text(_isDeviceConnected ? "Disconnect" : "Connect"),
          ),
        ],
      ),
    );
  }
}

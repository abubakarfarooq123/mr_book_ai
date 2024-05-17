import 'package:flutter/material.dart';
import '../../navbar.dart';
import '../history/historyScreen.dart';
class ChangeAvatarScreen extends StatefulWidget {
  const ChangeAvatarScreen({super.key});

  @override
  State<ChangeAvatarScreen> createState() => _ChangeAvatarScreenState();
}

class _ChangeAvatarScreenState extends State<ChangeAvatarScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Row(
        children: [
          // Sidebar
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(0), // Adjust padding as needed
              child: NavBarScreen(),
            ),
          ),
          // Main Content
          Expanded(
            flex: 3, // Adjust flex as needed
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text('Avatar'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

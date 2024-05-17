import 'package:flutter/material.dart';
import 'package:mr_book_ai/Screens/history/historyScreen.dart';

import '../../navbar.dart';

class BookScreen extends StatefulWidget {
  const BookScreen({super.key});

  @override
  State<BookScreen> createState() => _BookScreenState();
}

class _BookScreenState extends State<BookScreen> {
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
                    child: Text('Books'),
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

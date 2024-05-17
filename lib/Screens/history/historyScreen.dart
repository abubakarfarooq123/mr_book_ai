import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mr_book_ai/Screens/home/homescreen.dart';
import 'package:sidebarx/sidebarx.dart';

import '../../const/color.dart';
import '../../navbar.dart';
import '../Avatar/avatarScreen.dart';
import '../Books/bookScreen.dart';
import '../ReportIssue/reportissue.dart';
import '../Subscription/subscriptionScreen.dart';
import '../account_setting/account_screen.dart';
import '../home/creditsScreen.dart';
class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
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
                    child: Text('History'),
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

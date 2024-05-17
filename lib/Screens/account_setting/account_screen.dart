import 'package:flutter/material.dart';
import 'package:mr_book_ai/navbar.dart';

class AccountsScreen extends StatefulWidget {
  const AccountsScreen({super.key});

  @override
  State<AccountsScreen> createState() => _AccountsScreenState();
}

class _AccountsScreenState extends State<AccountsScreen> {
  @override
  void initState() {
    super.initState();
    setState(() {

    });

    // Initialize any animation controllers or other components here
  }
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
                    child: Text('Accounts'),
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

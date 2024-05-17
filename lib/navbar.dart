import 'package:flutter/material.dart';
import 'package:mr_book_ai/Screens/Avatar/avatarScreen.dart';
import 'package:mr_book_ai/Screens/ReportIssue/reportissue.dart';
import 'package:mr_book_ai/Screens/Subscription/subscriptionScreen.dart';
import 'package:mr_book_ai/Screens/home/creditsScreen.dart';
import 'package:mr_book_ai/const/color.dart';

import 'Screens/Books/bookScreen.dart';
import 'Screens/account_setting/account_screen.dart';
import 'Screens/history/historyScreen.dart';

class NavBarScreen extends StatefulWidget {
  const NavBarScreen({Key? key});

  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  late List<bool> selected;
  List<IconData> icon = [
    Icons.person_outline,
    Icons.history_outlined,
    Icons.book_online,
    Icons.photo_camera_outlined,
    Icons.credit_score_outlined,
    Icons.report_outlined,
    Icons.subscriptions_outlined,
    Icons.logout_outlined
  ];

  @override
  void initState() {
    super.initState();
    selected = List<bool>.generate(icon.length, (index) => index == 0);
  }

  void select(int n) {
    setState(() {
      for (int i = 0; i < selected.length; i++) {
        selected[i] = i == n;
      }
    });
  }

  void navigateToAccountsScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const AccountsScreen()),
    );
  }

  void navigateToHistoryScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HistoryScreen()),
    );
  }

  void navigateToBooksScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const BookScreen()),
    );
  }

  void navigateToAvatarScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ChangeAvatarScreen()),
    );
  }
  void navigateToCreditsScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const CreditsScreen()),
    );
  }

  void navigateToReportScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ReportIssueScreen()),
    );
  }
  void navigateToSubscriptionScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SubscriptionScreen()),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          Container(
            margin: const EdgeInsets.all(8.0),
            height: MediaQuery.of(context).size.height,
            width: 70.0,
            decoration: BoxDecoration(
              color: AppColor.blueColor,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 110,
                  child: Column(
                    children: icon
                        .asMap()
                        .entries
                        .map(
                          (entry) => NavBarItem(
                        icon: entry.value,
                        selected: selected[entry.key],
                        onTap: () {
                          select(entry.key);
                          switch (entry.key) {
                            case 0:
                              navigateToAccountsScreen();
                              break;
                            case 1:
                              navigateToHistoryScreen();
                              break;
                            case 2:
                              navigateToBooksScreen();
                              break;
                            case 3:
                              navigateToAvatarScreen();
                              break;
                            case 4:
                              navigateToCreditsScreen();
                              break;
                            case 5:
                              navigateToReportScreen();
                              break;
                            case 6:
                              navigateToSubscriptionScreen();
                              break;
                          }
                        },
                      ),
                    )
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NavBarItem extends StatefulWidget {
  final IconData icon;
  final Function onTap;
  final bool selected;
  NavBarItem({
    required this.icon,
    required this.onTap,
    required this.selected,
  });
  @override
  _NavBarItemState createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem> with TickerProviderStateMixin {
  late AnimationController _controller1;
  late AnimationController _controller2;

  late Animation<double> _anim1;
  late Animation<double> _anim2;
  late Animation<double> _anim3;

  late Animation<Color?> _color;

  bool hovered = false;

  @override
  void initState() {
    super.initState();
    _controller1 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 250),
    );
    _controller2 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 275),
    );

    _anim1 = Tween(begin: 101.0, end: 75.0).animate(_controller1);
    _anim2 = Tween(begin: 101.0, end: 25.0).animate(_controller2);
    _anim3 = Tween(begin: 101.0, end: 50.0).animate(_controller2);
    _color = ColorTween(end: AppColor.blueColor, begin: Colors.white)
        .animate(_controller2);

    _controller1.addListener(() {
      setState(() {});
    });
    _controller2.addListener(() {
      setState(() {});
    });
  }

  @override
  void didUpdateWidget(NavBarItem oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!widget.selected) {
      Future.delayed(const Duration(milliseconds: 10), () {
        _controller1.reverse();
        _controller2.reverse();
      });
    } else {
      Future.delayed(const Duration(milliseconds: 10), () {
        _controller1.forward();
        _controller2.forward();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTap();
      },
      child: MouseRegion(
        onEnter: (value) {
          setState(() {
            hovered = true;
          });
        },
        onExit: (value) {
          setState(() {
            hovered = false;
          });
        },
        child: Container(
          width: 70.0,
          height: 70.0,
          color: hovered && !widget.selected ? Colors.white12 : Colors.transparent,
          child: Stack(
            children: [
              Positioned.fill(
                child: CustomPaint(
                  painter: CurvePainter(
                    value1: 0,
                    animValue1: _anim3.value,
                    animValue2: _anim2.value,
                    animValue3: _anim1.value,
                  ),
                ),
              ),
              Center(
                child: Icon(
                  widget.icon,
                  color: _color.value,
                  size: 18.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    super.dispose();
  }
}

class CurvePainter extends CustomPainter {
  final double value1;
  final double animValue1;
  final double animValue2;
  final double animValue3;

  CurvePainter({
    required this.value1,
    required this.animValue1,
    required this.animValue2,
    required this.animValue3,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    Paint paint = Paint();

    path.moveTo(101, value1);
    path.quadraticBezierTo(101, value1 + 20, animValue3, value1 + 20);
    path.lineTo(animValue1, value1 + 20);
    path.quadraticBezierTo(animValue2, value1 + 20, animValue2, value1 + 40);
    path.lineTo(101, value1 + 40);
    path.close();

    path.moveTo(101, value1 + 80);
    path.quadraticBezierTo(101, value1 + 60, animValue3, value1 + 60);
    path.lineTo(animValue1, value1 + 60);
    path.quadraticBezierTo(animValue2, value1 + 60, animValue2, value1 + 40);
    path.lineTo(101, value1 + 40);
    path.close();

    paint.color = Colors.white;
    paint.strokeWidth = 101.0;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

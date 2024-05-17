// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:sidebarx/sidebarx.dart';
//
// import '../../const/color.dart';
// import '../Avatar/avatarScreen.dart';
//
// import '../ReportIssue/reportissue.dart';
// import '../Subscription/subscriptionScreen.dart';
// import '../account_setting/account_screen.dart';
// import '../history/historyScreen.dart';
// import 'creditsScreen.dart';
//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     final width = MediaQuery.of(context).size.width;
//     final height = MediaQuery.of(context).size.height;
//
//     return Scaffold(
//       body: Column(
//         children: [
//           Expanded(
//             child: Row(
//               children: [
//                 // Sidebar
//                 SidebarX(
//                   showToggleButton: false,
//                   theme: SidebarXTheme(
//                     selectedIconTheme: const IconThemeData(
//                       color: Colors.white,
//                       size: 30,
//                     ),
//                     iconTheme: const IconThemeData(
//                       color: Colors.grey,
//                       size: 25,
//                     ),
//                     textStyle: GoogleFonts.nunitoSans(
//                       color: Colors.white,
//                     ),
//                     decoration: BoxDecoration(
//                       color: AppColor.blueColor,
//                     ),
//                   ),
//                   controller: SidebarXController(selectedIndex: 0, extended: false),
//                   items: [
//                     SidebarXItem(
//                       icon: Icons.home_outlined,
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => const HomeScreen()),
//                         );
//                       },
//                     ),
//                     SidebarXItem(
//                       icon: Icons.person_outline,
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => const AccountsScreen()),
//                         );
//                       },
//                     ),
//                     SidebarXItem(
//                       icon: Icons.history_outlined,
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => const HistoryScreen()),
//                         );
//                       },
//                     ),
//                     SidebarXItem(
//                       icon: Icons.book,
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => const BookScreen()),
//                         );
//                       },
//                     ),
//                     SidebarXItem(
//                       icon: Icons.photo_camera_back_outlined,
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => const ChangeAvatarScreen()),
//                         );
//                       },
//                     ),
//                     SidebarXItem(
//                       icon: Icons.credit_score_outlined,
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => const CreditsScreen()),
//                         );
//                       },
//                     ),
//                     SidebarXItem(
//                       icon: Icons.report_outlined,
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => const ReportIssueScreen()),
//                         );
//                       },
//                     ),
//                     SidebarXItem(
//                       icon: Icons.subscriptions_outlined,
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => const SubscriptionScreen()),
//                         );
//                       },
//                     ),
//                     SidebarXItem(
//                       icon: Icons.logout_outlined,
//                       onTap: () {
//                         // Navigator.push(
//                         //   context,
//                         //   MaterialPageRoute(builder: (context) => const CreditsScreen()),
//                         // );
//                       },
//                     ),
//                   ],
//                 ),
//
//                 // Main Content
//                 Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       SizedBox(
//                         height: height * 0.06,
//                       ),
//                       SizedBox(
//                         width: width,
//                         height: height * 0.06,
//                         child: Stack(
//                           children: [
//                             Positioned(
//                               left: width * 0.04,
//                               top: height * 0.01,
//                               child: Row(
//                                 children: [
//                                   Text(
//                                     "Mr. Book",
//                                     style: GoogleFonts.poppins(
//                                       color: Colors.black,
//                                       fontSize: 20,
//                                       fontWeight: FontWeight.w600,
//                                     ),
//                                   ),
//                                   const Icon(
//                                     Icons.arrow_drop_down_rounded,
//                                     color: Colors.blue,
//                                     size: 30,
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             Positioned(
//                               right: width * 0.04,
//                               child: Row(
//                                 children: [
//                                   Text(
//                                     "@ali123",
//                                     style: GoogleFonts.poppins(
//                                       color: Colors.black,
//                                       fontSize: 15,
//                                       fontWeight: FontWeight.w600,
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     width: width * 0.02,
//                                   ),
//                                   const CircleAvatar(
//                                     backgroundImage: AssetImage("assets/images/pro.png"),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       SizedBox(
//                         height: height * 0.04,
//                       ),
//                       Container(
//                         alignment: AlignmentDirectional.centerStart,
//                         child: Padding(
//                           padding: const EdgeInsets.only(left: 20),
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 "Hi, @ali123",
//                                 style: GoogleFonts.poppins(
//                                   color: Colors.black,
//                                   fontWeight: FontWeight.w700,
//                                   fontSize: 23,
//                                 ),
//                               ),
//                               Text(
//                                 "How can I help you today?",
//                                 style: GoogleFonts.poppins(
//                                   color: Colors.black,
//                                   fontWeight: FontWeight.w500,
//                                   fontSize: 13,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           // Message Bar
//           Container(
//             width: double.infinity,
//             padding: const EdgeInsets.all(10),
//             decoration: BoxDecoration(
//               color: Colors.grey[200],
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.grey.withOpacity(0.5),
//                   spreadRadius: 1,
//                   blurRadius: 3,
//                   offset: const Offset(0, 3), // changes position of shadow
//                 ),
//               ],
//             ),
//             child: Row(
//               children: [
//                 IconButton(
//                   onPressed: () {
//                     // Add logic to pick image
//                   },
//                   icon: const Icon(Icons.image_outlined),
//                   color: Colors.blue,
//                 ),
//                 IconButton(
//                   onPressed: () {
//                     // Add logic to record audio
//                   },
//                   icon: const Icon(Icons.mic_none_outlined),
//                   color: Colors.blue,
//                 ),
//                 const Expanded(
//                   child: TextField(
//                     decoration: InputDecoration(
//                       hintText: "Type your message...",
//                       border: InputBorder.none,
//                     ),
//                   ),
//                 ),
//                 IconButton(
//                   onPressed: () {
//                     // Add logic to send message
//                   },
//                   icon: Icon(Icons.send),
//                   color: Colors.blue,
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

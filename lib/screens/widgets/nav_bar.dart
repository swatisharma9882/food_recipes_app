// import 'package:flutter/material.dart';
//
// class CustomNavBarScreen extends StatefulWidget {
//   const CustomNavBarScreen({Key? key,required this.selectedIndex}) : super(key: key);
//  final  int selectedIndex;
//   @override
//   State<CustomNavBarScreen> createState() => _CustomNavBarScreenState();
// }
//
// class _CustomNavBarScreenState extends State<CustomNavBarScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return BottomAppBar(
//       color: Colors.white,
//       shape: const CircularNotchedRectangle(),
//       child: SizedBox(
//         height: MediaQuery.of(context).size.height * 0.075,
//         child: Padding(
//           padding: const EdgeInsets.all(10),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               GestureDetector(
//                 onTap: () {
//                   setState(() {
//                     widget.selectedIndex = 0;
//                   });
//                 },
//                 child: selectedIndex == 0
//                     ? Image.asset('assets/icons/homeActive.png')
//                     : Image.asset('assets/icons/homeInactive.png'),
//               ),
//               GestureDetector(
//                 onTap: () {
//                   setState(() {
//                     selectedIndex = 1;
//                   });
//                 },
//                 child: selectedIndex == 1
//                     ? Image.asset('assets/icons/bookmarkActive.png')
//                     : Image.asset('assets/icons/bookmarkInactive.png'),
//               ),
//               const SizedBox.shrink(),
//               GestureDetector(
//                 onTap: () {
//                   setState(() {
//                     selectedIndex = 2;
//                   });
//                 },
//                 child: selectedIndex == 2
//                     ? Image.asset('assets/icons/notificationActive.png')
//                     : Image.asset('assets/icons/notificationInactive.png'),
//               ),
//               GestureDetector(
//                 onTap: () {
//                   setState(() {
//                     selectedIndex = 3;
//                   });
//                 },
//                 child: selectedIndex == 3
//                     ? Image.asset('assets/icons/userActive.png')
//                     : Image.asset('assets/icons/userInactive.png'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     ),
//   }
// }

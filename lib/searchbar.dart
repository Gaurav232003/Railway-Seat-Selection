// import 'package:flutter/material.dart';
// import 'package:railway_seat/color.dart';

// class SearchBar extends StatefulWidget {
//   const SearchBar({
//     super.key,
//   });

//   @override
//   State<SearchBar> createState() => _SearchBarState();
// }

// class _SearchBarState extends State<SearchBar> {
//   TextEditingController t1 = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20.0),
//         color: Colors.grey[200],
//       ),
//       child: Row(
//         children: [
//           Expanded(
//             child: TextField(
//               style: TextStyle(color: Colors.black),
//               controller: t1,
//               decoration: InputDecoration(
//                 hintText: 'Enter Seat Number',
//                 hintStyle: TextStyle(
//                     color: Colors.black,
//                     fontSize: 13,
//                     fontStyle: FontStyle.italic),
//                 contentPadding: EdgeInsets.all(10.0),
//                 border: InputBorder.none,
//               ),
//             ),
//           ),
//           Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.only(
//                 topRight: Radius.circular(20.0),
//                 bottomRight: Radius.circular(20.0),
//               ),
//               color: Colors.deepPurple,
//             ),
//             child: IconButton(
//               icon: Icon(Icons.search, color: Colors.white),
//               onPressed: () {
//                 int? num = int.tryParse(t1.text);
//                 if (num != null && num < 32) {
//                   setState(() {
//                     print("yes");
//                     if (current != -1) {
//                       berthCardColor[current] = Colors.deepPurple;
//                     }
//                     berthCardColor[num - 1] = Colors.deepOrange;
//                     current = num - 1;
//                   });
//                 }
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

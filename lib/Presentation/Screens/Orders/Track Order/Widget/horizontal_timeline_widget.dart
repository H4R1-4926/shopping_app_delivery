// import 'package:flutter/material.dart';

// class HorizontalTmeLineWidget extends StatelessWidget {
//   final bool isFirst;
//   final bool isLast;
//   final bool isPast;
//   final Widget startChild;
//   const HorizontalTmeLineWidget(
//       {super.key,
//       required this.isFirst,
//       required this.isLast,
//       required this.isPast,
//       required this.startChild});

//   @override
//   Widget build(BuildContext context) {
//     final Color color1 = kblack;
//     final Color color2 = kwhite;
//     return SizedBox(
//       width: 90,
//       child: TimelineTile(
//         axis: TimelineAxis.horizontal,
//         isFirst: isFirst,
//         isLast: isLast,
//         alignment: TimelineAlign.center,
//         startChild: startChild,
//         indicatorStyle: IndicatorStyle(
//             padding: const EdgeInsets.symmetric(horizontal: 8),
//             color: isPast ? color1 : kGrey.withOpacity(0.4),
//             width: 30,
//             height: 25,
//             drawGap: true,
//             iconStyle: IconStyle(
//                 iconData: isPast ? Icons.check : Icons.schedule,
//                 color: isPast ? color2 : kwhite.withOpacity(0.4),
//                 fontSize: 18)),
//         beforeLineStyle:
//             LineStyle(color: isPast ? color1 : kGrey.withOpacity(0.4)),
//       ),
//     );
//   }
// }

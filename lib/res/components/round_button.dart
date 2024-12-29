// import 'package:flutter/material.dart';
//
// class RoundButton extends StatelessWidget {
//   final bool loading;
//   final String title;
//   final double? height, width;
//   final VoidCallback onPress;
//   final Color? textColor, buttonColor;
//
//   const RoundButton({
//     required this.loading,
//     required this.title,
//     this.height,
//     this.width,
//     required this.onPress,
//     this.textColor,
//     this.buttonColor,
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onPress,
//       child: Container(
//         height: height,
//         width: width,
//         decoration: BoxDecoration(
//             color: buttonColor, borderRadius: BorderRadius.circular(20)),
//         child: loading
//             ? const Center(child: CircularProgressIndicator())
//             : Center(
//                 child: Text(
//                   title,
//                   style: TextStyle(
//                       color: textColor,
//                       fontSize: 18,
//                       fontWeight: FontWeight.w500),
//                 ),
//               ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

import '../colors/app_color.dart';

class RoundButton extends StatelessWidget {
  const RoundButton(
      {super.key,
      this.buttonColor = AppColor.primaryButtonColor,
      this.textColor = AppColor.primaryTextColor,
      required this.title,
      required this.onPress,
      this.width = 60,
      this.height = 50,
      this.loading = false});

  final bool loading;
  final String title;

  final double height, width;

  final VoidCallback onPress;

  final Color textColor, buttonColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: buttonColor, borderRadius: BorderRadius.circular(50)),
        child: loading
            ? const Center(child: CircularProgressIndicator())
            : Center(
                child: Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: Colors.white),
                ),
              ),
      ),
    );
  }
}

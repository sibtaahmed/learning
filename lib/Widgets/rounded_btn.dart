import 'package:flutter/material.dart';

// class RoundedButton extends StatelessWidget {
//  final String btnName;
//  final Icon? icon;
//  final TextStyle? textStyle;
//  final Color? bgColor;
//  final VoidCallback? callback;
//   const RoundedButton({
//     super.key,
// required this.btnName, this.icon, this.textStyle, this.bgColor, this.callback,

//   });

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(onPressed: (){
//       callback!();
//     }, child: icon!=null ? Row(children: [
//       icon!, Text(btnName, style: textStyle,)
//     ],

//     ): Text(btnName, style: textStyle,),
//     style: ElevatedButton.styleFrom(
//       backgroundColor: bgColor,
// shadowColor: bgColor,
// shape: RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(21)
//     ),)));
//   }
// }

class RoundedButton extends StatelessWidget {
  final String btnName;
  final Icon? icon;
  final TextStyle? textStyle;
  final Color? bgColor;
  final VoidCallback? callback;
  final Color? textColor;
  final Color? Iconcolor;

  const RoundedButton(
      {super.key,
      required this.btnName,
      this.icon,
      this.textStyle,
      this.bgColor,
      this.callback,
      this.textColor,
      this.Iconcolor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        callback!();
      },
      style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          shadowColor: bgColor,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(21)))),
      child: icon != null
          ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                icon!,
                const SizedBox(width: 4,),
                Text(btnName, style: TextStyle(color: textColor)),
            
              ],
            )
          : Text(
              btnName,
              style:  TextStyle(color: textColor),
            ),
    );
  }
}

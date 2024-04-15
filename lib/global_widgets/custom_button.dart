import 'package:flutter/material.dart';
import 'package:instagram_clone_application/core/constants/color_constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      
      required this.text,
      this.buttonColor = ColorConstants.primaryblue,
      this.haveBorder = false,
      this.textColor = ColorConstants.primarywhite,
      this.onTap,
      this.verticalpadding = 15,
      this.horizontalPadding = 0 });

  final String text;
  final Color buttonColor;
  final bool haveBorder;
  final Color textColor ;
  final double verticalpadding;
  final double horizontalPadding;

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: verticalpadding,
          horizontal: horizontalPadding),
        decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(8),
            border: haveBorder == true
                ? Border.all(color: ColorConstants.primaryblack.withOpacity(0.4))
                : null),

        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
               fontSize: 14,
               fontWeight: FontWeight.w500,
               )
          ),
        ),
      ),
    );
  }
}
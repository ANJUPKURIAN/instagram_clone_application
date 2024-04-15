import 'package:flutter/material.dart';
import 'package:instagram_clone_application/core/constants/color_constants.dart';


class CustomProfileDataWidget extends StatelessWidget {
  const CustomProfileDataWidget(
    {super.key, required this.title, required this.value });

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    
 return Column(
      children: [
        Text(
          value.toString(),
          style: TextStyle(
            fontSize: 16,
            color: ColorConstants.primaryblack,
             fontWeight: FontWeight.w600),
        ),

        Text(title,
         style: TextStyle(
          fontSize: 13)
          )
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:instagram_clone_application/core/constants/color_constants.dart';
import 'package:instagram_clone_application/view/notification_screen/widgets/custom_card_builder_with_tile.dart';


class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: ColorConstants.primaryblack.withOpacity(.1)))),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 13),
              child: Text("Follow requests")),
          Column(
            children: List.generate(
              10,
              (index) => CustomCardBuilderWithTile(
                itemCount: index + 1,
              ),
            ),
          )
        ],
      ),
    );
  }
}
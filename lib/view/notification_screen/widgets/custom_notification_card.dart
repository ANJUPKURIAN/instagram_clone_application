import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram_clone_application/core/constants/color_constants.dart';
import 'package:instagram_clone_application/global_widgets/custom_button.dart';

class CustomNotificationCard extends StatefulWidget {
  const CustomNotificationCard({super.key});

  @override
  State<CustomNotificationCard> createState() => _CustomNotificationCardState();
}

class _CustomNotificationCardState extends State<CustomNotificationCard> {
  @override
        Widget build(BuildContext context) {
    List profileImages = ["", ""];
    bool isFollow = true;
    bool isAlreayFollowing = true;
    return Container(
      padding: EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          profileImages.length < 2
              ? CircleAvatar(
                  radius: 22,
                )
              : Stack(
                  children: [
                    SizedBox(
                      height: 44,
                      width: 44,
                    ),
                    CircleAvatar(
                      radius: 16,
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: CircleAvatar(
                          radius: 18,
                          backgroundColor: ColorConstants.primarywhite,
                          child: CircleAvatar(
                            radius: 16,
                          ),
                        ))
                  ],
                ),
          SizedBox(width: 12),
          Expanded(
            child: Text(
              "jasmine liked your photo. 1h",
              maxLines: 3,
              textAlign: TextAlign.justify,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(width: 20),
          isFollow
              ? CustomButton(
                  verticalpadding: 5,
                  horizontalPadding: 20,
                  text: isAlreayFollowing ? "Message" : "Follow",
                  buttonColor: isAlreayFollowing
                      ? Colors.transparent
                      : ColorConstants.primaryblue,
                  textColor: isAlreayFollowing
                      ? ColorConstants.primaryblack
                      : ColorConstants.primarywhite,
                  haveBorder: isAlreayFollowing,
                )
              : Container(
                  height: 44,
                  width: 44,
                  color: Colors.red,
                )
        ],
      ),
    );
  }
}   
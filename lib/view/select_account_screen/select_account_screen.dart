import 'package:flutter/material.dart';
import 'package:instagram_clone_application/core/constants/color_constants.dart';
import 'package:instagram_clone_application/core/constants/image_constants.dart';
import 'package:instagram_clone_application/global_widgets/custom_button.dart';
import 'package:instagram_clone_application/view/login_screen/login_screen.dart';

class SelectAccountScreen extends StatelessWidget {
  SelectAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(ImageConstants.applogo),
              SizedBox(height: 50),
              CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/39866/entrepreneur-startup-start-up-man-39866.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
                radius: 50,
              ),
              SizedBox(height: 15),
              Text(
                "Anju",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 10),
              CustomButton(
                text: "Log in",
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ));
                },
              ),
              SizedBox(height: 30),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Switch accounts",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: ColorConstants.primaryblue),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 25),
        decoration: BoxDecoration(border: Border(top: BorderSide(width: .1))),
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
              text: "Dont have an account? ",
              style:
                  TextStyle(color: ColorConstants.primaryblack.withOpacity(.4)),
              children: [
                TextSpan(
                  text: "Sign Up",
                  style: TextStyle(
                      color: ColorConstants.primaryblack,
                      fontWeight: FontWeight.bold),
                )
              ]),
        ),
      ),
    );
  }
}
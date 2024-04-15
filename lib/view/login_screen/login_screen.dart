import 'package:flutter/material.dart';
import 'package:instagram_clone_application/core/constants/color_constants.dart';
import 'package:instagram_clone_application/core/constants/image_constants.dart';
import 'package:instagram_clone_application/global_widgets/custom_button.dart';
//import 'package:instagram_clone_application/view/bottom_notification.dart';
import 'package:instagram_clone_application/view/bottom_nav_bar_screen/bottom_nav_bar_screen.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                //# instagram text logo
                Image.asset(ImageConstants.applogo),
                SizedBox(
                  height: 50,
                ),
                //# user name text field


                TextFormField(
                  // onChanged: (value) {
                  //   setState(() {});
                  // },
                  controller: nameController,
                  decoration: InputDecoration(
                    fillColor: ColorConstants.lightGrey,
                    filled: true,
                    // labelText: 'username',
                    // labelStyle: TextStyle(
                    //     color: ColorConstant.primaryblack.withOpacity(.4)),
                   enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: ColorConstants.primaryblack.withOpacity(.1))),

                   focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color:
                                ColorConstants.primaryblack.withOpacity(.4))),
                  ),
                  onChanged: (value) {
                    setState(() {});
                  },
                ),

                  
                
                SizedBox(
                  height: 15,
                ),

                TextFormField(
                  // onChanged: (value) {
                  //   setState(() {});
                  // },
                  controller: passwordController,
                  onTapOutside: (event){
                    FocusScope.of(context).unfocus();
                  },
                  obscureText: true,
                  // obscuringCharacter: "*",
                   decoration: InputDecoration(
                      fillColor: ColorConstants.lightGrey,
                      filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color:
                                ColorConstants.primaryblack.withOpacity(.1))),
                        focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color:
                                ColorConstants.primaryblack.withOpacity(.4))),
                  ),
                  onChanged: (value) {
                    print(value);
                    setState(() {});
                  },
                ),

           SizedBox(height: 8),
                // #4 forgot password text button

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot password?",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: ColorConstants.primaryblue),
                    ),
                  ],
                ),

         SizedBox(height: 40),
                // #5 Login  button

                CustomButton(
                  buttonColor: nameController.text.isNotEmpty &&
                          passwordController.text.isNotEmpty
                      ? ColorConstants.primaryblue
                      : ColorConstants.primaryblue.withOpacity(.4),
                  text: "Log in",
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BottomNavBarScreen()),
                        (route) => false);
                  },
                ),
                SizedBox(height: 30),
                // #6 Login with facebook  button

                TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.facebook,
                        color: ColorConstants.primaryblue,
                      ),
                      SizedBox(width: 15),
                      Text(
                        "Login with facebook",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: ColorConstants.primaryblue),
                      ),
                    ],
                  ),
                ),

                // #7 or section
                SizedBox(height: 30),
                Row(children: <Widget>[
                  Expanded(
                      child: Divider(
                    endIndent: 30,
                  )),
                  Text("OR"),
                  Expanded(
                      child: Divider(
                    indent: 30,
                  )),
                ]),
                SizedBox(height: 30),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: "Dont have an account? ",
                      style: TextStyle(
                          color: ColorConstants.primaryblack.withOpacity(.4)),
                      children: [
                        TextSpan(
                          text: "Sign Up",
                          style: TextStyle(
                              color: ColorConstants.primaryblue,
                              fontWeight: FontWeight.w500),
                        )
                      ]),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 25),
        decoration: BoxDecoration(border: Border(top: BorderSide(width: .1))),
        child: Text(
          "Instagram or Facebook",
          textAlign: TextAlign.center,
          style: TextStyle(color: ColorConstants.primaryblack.withOpacity(.4)),
        ),
      ),































                     
    );
  }
}
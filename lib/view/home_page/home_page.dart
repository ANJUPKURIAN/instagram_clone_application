import 'package:flutter/material.dart';
import 'package:instagram_clone_application/view/dummy_db.dart';
import 'package:instagram_clone_application/view/home_page/widgets/custom_posts_container.dart';
import 'package:instagram_clone_application/view/home_page/widgets/custom_story_avatar';
import 'package:instagram_clone_application/core/constants/image_constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.camera_alt_outlined),
          title: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Image.asset(
              ImageConstants.applogo,
              scale: 1.5,
            ),
          ),
        centerTitle: true,

         actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.video_settings)),
            IconButton(onPressed: () {}, icon: Icon(Icons.ios_share_rounded)),
        ],
      ),

   ///#1 custom story section
        body: SingleChildScrollView(
          child: Column(
          children: [
             SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    DummyDb.storyList.length,
                    (index) => CustomStoryAvatar (
                          proPic: DummyDb.storyList[index]["proPic"],
                          userName: DummyDb.storyList[index]["userName"],
                          isLive: DummyDb.storyList[index]["isLive"],
                        )),
              ),

            ),

          // #2  custom_posts_containers


         ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: DummyDb.homePostsList.length,
                itemBuilder: (context, index) => CustomPostsContainer(
                  userName: DummyDb.homePostsList[index]["userName"].toString(),
                  location: DummyDb.homePostsList[index]["location"].toString(),
                  postImagesList: DummyDb.homePostsList[index]["posts"],
                  proPic: DummyDb.homePostsList[index]["proPic"].toString(),
                  caption: DummyDb.homePostsList[index]["caption"].toString(),
                  isLiked: DummyDb.homePostsList[index]["liked"],
                ),
              )
            ],
          ),
    ));
   }
}









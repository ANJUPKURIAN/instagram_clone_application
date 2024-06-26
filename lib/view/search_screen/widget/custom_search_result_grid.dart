import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class CustomSearchResultGrid extends StatelessWidget {
   CustomSearchResultGrid({super.key, required this.isIndexEven});

  final bool isIndexEven;

 @override
  Widget build(BuildContext context) {
   List imageList = [
    "https://images.pexels.com/photos/1547813/pexels-photo-1547813.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/7957992/pexels-photo-7957992.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/1011302/pexels-photo-1011302.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/2418664/pexels-photo-2418664.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/8100784/pexels-photo-8100784.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/10176997/pexels-photo-10176997.jpeg?auto=compress&cs=tinysrgb&w=600"
  ];

     return Container(
     child: Column(
        children: [
          isIndexEven
              ? Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Container(
                          margin: EdgeInsets.all(1),
                          decoration: BoxDecoration(
                          image: DecorationImage(
                           fit: BoxFit.cover,
                          image: NetworkImage(
                           "https://images.pexels.com/photos/670720/pexels-photo-670720.jpeg?auto=compress&cs=tinysrgb&w=600")
                      )
                   ),
              height: MediaQuery.sizeOf(context).width * .33,
          ),

          Container(
           margin: EdgeInsets.all(1),
           decoration: BoxDecoration(
          image: DecorationImage(
          fit: BoxFit.cover,
         image: NetworkImage(
        "https://images.pexels.com/photos/598917/pexels-photo-598917.jpeg?auto=compress&cs=tinysrgb&w=600")
        )
        ),
      height: MediaQuery.sizeOf(context).width * .33,
       )
      ],
     ),
    ),

    Expanded(
      flex: 2,
      child: Container(
      margin: EdgeInsets.all(1),
      decoration: BoxDecoration(
         image: DecorationImage(
         fit: BoxFit.cover,
        image: NetworkImage(
        "https://images.pexels.com/photos/447329/pexels-photo-447329.jpeg?auto=compress&cs=tinysrgb&w=600")
        )
        ),
        height: MediaQuery.sizeOf(context).width * .66,
       )
       )
      ],
    )

    : Row(
      children: [
        Expanded(
        flex: 2,
         child: Container(
         margin: EdgeInsets.all(1),
         decoration: BoxDecoration(
        image: DecorationImage(
        fit: BoxFit.cover,
        image: NetworkImage(
        "https://images.pexels.com/photos/670720/pexels-photo-670720.jpeg?auto=compress&cs=tinysrgb&w=600")
        )
       ),
    height: MediaQuery.sizeOf(context).width * .66)
    ),

     Expanded(
        flex: 1,
        child: Column(
        children: [
        Container(                           
         margin: EdgeInsets.all(1),
        height: MediaQuery.sizeOf(context).width * .33,
        decoration: BoxDecoration(
        image: DecorationImage(
        fit: BoxFit.cover,
         image: NetworkImage(
            "https://images.pexels.com/photos/670720/pexels-photo-670720.jpeg?auto=compress&cs=tinysrgb&w=600"))),
             ),

            Container(
                margin: EdgeInsets.all(1),
                height: MediaQuery.sizeOf(context).width * .33,
                decoration: BoxDecoration(
                  image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://images.pexels.com/photos/598917/pexels-photo-598917.jpeg?auto=compress&cs=tinysrgb&w=600"))),
                          )
                        ],
                      ),
                    ),
                  ],
                ),


          GridView.builder(
              shrinkWrap: true,
              itemCount: 6,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemBuilder: (context, index) => Container(
                  margin: EdgeInsets.all(1),
                   decoration: BoxDecoration(
                        image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(imageList[index]))),
                  ),
                  )
        ],
      ),

  );
  }
}
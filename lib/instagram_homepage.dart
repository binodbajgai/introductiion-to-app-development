import 'package:flutter/material.dart';

class instagram_homepage extends StatefulWidget {
  const instagram_homepage({super.key});

  @override
  State<instagram_homepage> createState() => _instagram_homepageState();
}

class _instagram_homepageState extends State<instagram_homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset("assets/images/img_8.png")
          ],

        ),
        actions: [
          Icon(Icons.add_box_outlined),
          Icon(Icons.favorite_border_outlined),
          Icon(Icons.message_outlined)
        ],


      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  "assets/images/img_9.png",
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,),

              ),

            ],


          )
        ]
      ),

    );

  }

}

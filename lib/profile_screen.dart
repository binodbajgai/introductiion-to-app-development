import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(

          title: Text("bb_bajgai"),
          centerTitle: true,
          leading: Icon(Icons.arrow_back_ios),
          actions: [
            Icon(Icons.more_horiz)
          ],

        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      "assets/images/img.png",
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,

                    ),
                  ),

                  Column(
                    children: [
                      Text("174"),
                      Text("Posts")
                    ],

                  ),
                  Column(
                    children: [
                      Text("1998"),
                      Text("Followers")
                    ],

                  ),
                  Column(
                    children: [
                      Text("74"),
                      Text("following")
                    ],

                  )

                ]

            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children:  [
                Text("Binod Bajgai"),
                Text("@binodbajgai"),
                Text("Flutter Developer"),
                Text("bajgaibenod@gmail.com"),
                Text("https://www.binodbajgai.com.np"),
                Text("Followed by vision,paritash,aruun")


              ]
            ),
            Row(


            )
          ],

          )

          );


  }
}

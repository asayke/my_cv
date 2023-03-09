import 'package:flutter/material.dart';

import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyCVScreen(),
    );
  }
}

class MyCVScreen extends StatelessWidget {
  const MyCVScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 30),
              CircleAvatar(
                radius: 90,
                foregroundImage: AssetImage("images/avatar.jpg"),
                ),
              Text("Oleja K", style: kTitleTextStyle,),
              Text("Flutter Developer"),
              SizedBox(height: 15),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Card(
                  child: ListTile(
                    leading: const Icon(Icons.call),
                    title: Text("+79289566095", style: kSmallTextStyle,),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Card(
                  child: ListTile(
                    leading: const Icon(Icons.email),
                    title: Text("noilzep@gmail.com", style: kSmallTextStyle,),
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
              
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Text("Education", textAlign: TextAlign.center, style: kRegularBoldTextStyle,),
                          SizedBox(height: 3,),
                          Text("SFU, Rostov-on-Don", textAlign: TextAlign.center, style: kRegularTextStyle,)
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text("Work Experience", textAlign: TextAlign.center, style: kRegularBoldTextStyle,),
                          SizedBox(height: 3,),
                          Text("Unity Developer", textAlign: TextAlign.center, style: kRegularTextStyle,),
                          Text("Java Developer", textAlign: TextAlign.center, style: kRegularTextStyle,),
                          Text("Flutter Developer", textAlign: TextAlign.center, style: kRegularTextStyle,),
                        ],
                      ),
                    )
                  ],
                  ),
              )
        ]),
        ),
      ),
    );
  }
}
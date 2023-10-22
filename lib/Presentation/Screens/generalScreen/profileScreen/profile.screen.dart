import 'package:bloc_learning/Core/Constant/assets.dart';
import 'package:bloc_learning/Core/Constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        backgroundColor: MyColors.primaryColor,
        automaticallyImplyLeading: false,
        title: const Text("Profile"),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: const Icon(Icons.logout_rounded))
        ],
      ),
      body: SingleChildScrollView(
        child: LayoutBuilder(builder: (context, BoxConstraints constraints) {
          return Column(
            children: <Widget>[
              Container(
                height: 400,
                width: MediaQuery.sizeOf(context).width,
                decoration: const BoxDecoration(
                    color: MyColors.primaryColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Column(
                  children: <Widget>[
                    const CircleAvatar(
                        radius: 50,
                        backgroundImage:
                            AssetImage(MyAssets.assetsImageOnBoarding2)),
                    Text("Vivek Yadav",
                        style: TextStyle(
                            fontSize: 15.sp, fontWeight: FontWeight.bold)),
                    Text("vivek@gmail.com", style: TextStyle(fontSize: 15.sp)),
                    SizedBox(height: 20.h),
                    const Text(
                        "Vivek Yadav (Tiger) Is Software Developer,Who Have Eager To Anything",
                        textAlign: TextAlign.center),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text("6", textAlign: TextAlign.center),
                              Text("Posts", textAlign: TextAlign.center),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text("0", textAlign: TextAlign.center),
                              Text("Following", textAlign: TextAlign.center),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text("0", textAlign: TextAlign.center),
                              Text("Follower", textAlign: TextAlign.center),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              Text("My Playlist",
                  style:
                      TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold)),
              GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 13,
                      crossAxisSpacing: 5,
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return Column(
                      children: <Widget>[
                        Image.asset(MyAssets.assetsImageOnBoarding1),
                        Flexible(
                          child: Row(
                            children: <Widget>[
                              const Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "Learn Web Designing",
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              InkWell(
                                  onTap: () {},
                                  child: const Icon(Icons.more_vert_rounded))
                            ],
                          ),
                        )
                      ],
                    );
                  })
            ],
          );
        }),
      ),
    );
  }
}

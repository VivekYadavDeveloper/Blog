import 'package:auto_route/auto_route.dart';
import 'package:bloc_learning/Core/Constant/assets.dart';
import 'package:bloc_learning/Presentation/Router/router.imports.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        //   title: Text("widget.title"),
        // ),
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: LayoutBuilder(builder: (context, BoxConstraints constraints) {
            return Column(
              children: <Widget>[
                Image.asset(MyAssets.assetsImageOnBoarding).cornerRadius(20),
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text("Lastest Post"),
                    SizedBox(width: 10.w),
                    const Text("See All")
                  ],
                ),
                ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 10,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Row(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () => AutoRouter.of(context)
                                .push(const HomeDetailsRoute()),
                            child: Image.asset(
                              MyAssets.assetsImageOnBoarding1,
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              const Text(
                                "Learn Web Designing",
                                maxLines: 2,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  const Icon(Icons.watch_later_outlined),
                                  SizedBox(width: 5.w),
                                  const Text("6 Month Ago"),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  const Text("200 Views"),
                                  SizedBox(width: 75.w),
                                  const Icon(Icons.bookmark_border),
                                ],
                              ),
                            ],
                          )
                        ],
                      );
                    })
              ],
            );
          }),
        ),
      ),
    ));
  }
}

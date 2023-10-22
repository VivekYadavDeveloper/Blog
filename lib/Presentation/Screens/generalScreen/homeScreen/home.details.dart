import 'package:auto_route/annotations.dart';
import 'package:bloc_learning/Core/Constant/assets.dart';
import 'package:bloc_learning/Core/Constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class HomeDetails extends StatefulWidget {
  const HomeDetails({super.key});

  @override
  State<HomeDetails> createState() => _HomeDetailsState();
}

class _HomeDetailsState extends State<HomeDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
        title: const Text("Learn Web Designing"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: LayoutBuilder(builder: (context, BoxConstraints constraints) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset(MyAssets.assetsImageOnBoarding1),
                SizedBox(height: 15.h),
                Text(
                  "Learn Web Designing",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 25.sp),
                ),
                Row(
                  children: <Widget>[
                    const Icon(Icons.remove_red_eye),
                    const SizedBox(width: 5),
                    const Text("264 Views"),
                    const Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.thumb_up_off_alt_outlined,
                            color: Colors.green)),
                    const Text("0"),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.thumb_down_off_alt_outlined,
                            color: Colors.red)),
                    const Text("0"),
                  ],
                ),
                const Text(
                    "Web design refers to the design of websites that are displayed on the internet. It usually refers to the user experience aspects of website development rather than software development. Web design used to be focused on designing websites for desktop browsers; however, since the mid-2010s, design for mobile and tablet browsers has become ever-increasingly important.")
              ],
            );
          }),
        ),
      ),
    );
  }
}

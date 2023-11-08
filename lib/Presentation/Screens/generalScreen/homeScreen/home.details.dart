import 'package:auto_route/annotations.dart';

import 'package:bloc_learning/Core/Constant/color.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../Data/Models/home.model.dart';

@RoutePage()
class HomeDetails extends StatefulWidget {
  final Post post;
  final String imagePath;

  const HomeDetails({super.key, required this.post, required this.imagePath});

  @override
  State<HomeDetails> createState() => _HomeDetailsState();
}

class _HomeDetailsState extends State<HomeDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
        title: Text(widget.post.title.toString()),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: LayoutBuilder(builder: (context, BoxConstraints constraints) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Hero(
                  tag: Key(widget.post.id.toString()),
                  child: CachedNetworkImage(
                    imageUrl: widget.imagePath,
                    fit: BoxFit.cover,
                  ).cornerRadius(20),
                ),
                SizedBox(height: 15.h),
                Text(
                  widget.post.title.toString(),
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 25.sp),
                ),
                Row(
                  children: <Widget>[
                    const Icon(Icons.remove_red_eye),
                    const SizedBox(width: 5),
                    Text(
                      "${widget.post.views} Views",
                    ),
                    const Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.thumb_up_off_alt_outlined,
                            color: Colors.green)),
                    Text(widget.post.like.toString()),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.thumb_down_off_alt_outlined,
                            color: Colors.red)),
                    Text(widget.post.dislike.toString()),
                  ],
                ),
                Text(
                  widget.post.body.toString(),
                )
              ],
            );
          }),
        ),
      ),
    );
  }
}

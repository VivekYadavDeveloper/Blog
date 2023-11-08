import 'package:auto_route/auto_route.dart';

import 'package:bloc_learning/Data/Models/home.model.dart';
import 'package:bloc_learning/Data/Repo/repo.dart';
import 'package:bloc_learning/Data/ViewModel/home.view.model.dart';
import 'package:bloc_learning/Presentation/Router/router.imports.gr.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_bloc/cubit/velocity_cubit/velocity_cubit.dart';
import 'package:velocity_x/velocity_x.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late HomeViewModel homeViewModel;

  @override
  void initState() {
    homeViewModel = HomeViewModel(repository: context.read<Repository>());
    homeViewModel.fetchAllPosts();
    super.initState();
  }

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
          child: BlocBuilder<VelocityBloc<HomeModel>, VelocityState<HomeModel>>(
            bloc: homeViewModel.postsBloc,
            builder: (context, state) {
              if (state is VelocityInitialState) {
                return const Center(
                  child: CircularProgressIndicator.adaptive(),
                );
              } else if (state is VelocityUpdateState) {
                return SingleChildScrollView(
                  child: LayoutBuilder(
                    builder: (context, BoxConstraints constraints) {
                      return Column(
                        children: <Widget>[
                          VxSwiper.builder(
                            autoPlay: true,
                            aspectRatio: 16 / 9,
                            enlargeCenterPage: true,
                            itemCount: state.data.popularPosts!.length,
                            itemBuilder: (BuildContext context, int index) {
                              var latestPost = state.data.allPosts![index];
                              var popularImagePath = latestPost.featuredimage
                                  .toString()
                                  .prepend("https://techblog.codersangam.com/")
                                  .replaceAll("public", "storage");
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Hero(
                                  tag: Key(latestPost.id.toString()),
                                  child: CachedNetworkImage(
                                    imageUrl: popularImagePath,
                                    fit: BoxFit.cover,
                                  ).cornerRadius(20),
                                ),
                              );
                            },
                          ).cornerRadius(20),
                          SizedBox(height: 10.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              const Text("Latest Post"),
                              SizedBox(width: 10.w),
                              const Text("See All")
                            ],
                          ),
                          ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: state.data.allPosts!.length,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              var latestPost = state.data.allPosts![index];
                              var imagePath = latestPost.featuredimage
                                  .toString()
                                  .prepend("https://techblog.codersangam.com/")
                                  .replaceAll("public", "storage");
                              return Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Row(
                                  children: <Widget>[
                                    GestureDetector(
                                        onTap: () => AutoRouter.of(context)
                                            .push(HomeDetailsRoute(
                                                post: latestPost,
                                                imagePath: imagePath)),
                                        child: CachedNetworkImage(
                                          imageUrl: imagePath,
                                          height: 120.h,
                                          width: 180,
                                          fit: BoxFit.cover,
                                        ).cornerRadius(20)),
                                    SizedBox(width: 4.w),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        SizedBox(
                                          width: 150.w,
                                          child: Text(
                                            latestPost.title.toString(),
                                            overflow: TextOverflow.ellipsis,
                                            softWrap: true,
                                            maxLines: 2,
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            const Icon(
                                                Icons.watch_later_outlined),
                                            SizedBox(width: 5.w),
                                            Text(latestPost.updatedAt!
                                                .timeAgo()
                                                .toString()),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Text(latestPost.views.toString()),
                                            SizedBox(width: 75.w),
                                            const Icon(Icons.bookmark_border),
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              );
                            },
                          )
                        ],
                      );
                    },
                  ),
                );
              } else {
                return const SizedBox();
              }
            },
          ),
        ),
      ),
    );
  }
}

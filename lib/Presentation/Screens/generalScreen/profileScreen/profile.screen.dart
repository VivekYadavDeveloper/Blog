import 'package:bloc_learning/Core/Constant/assets.dart';
import 'package:bloc_learning/Core/Constant/color.dart';
import 'package:bloc_learning/Data/Models/profile.model.dart';
import 'package:bloc_learning/Data/Repo/repo.dart';
import 'package:bloc_learning/Data/ViewModel/profile.view.model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_bloc/cubit/velocity_cubit/velocity_cubit.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  ProfileViewModel? profileViewModel;

  @override
  void initState() {
    profileViewModel = ProfileViewModel(repository: context.read<Repository>());
    profileViewModel!.getUserProfileData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
        automaticallyImplyLeading: false,
        title: const Text("Profile"),
        actions: <Widget>[
          IconButton(
              onPressed: () => profileViewModel!.logout(context),
              icon: const Icon(Icons.logout_rounded))
        ],
      ),
      body: SingleChildScrollView(
        child: LayoutBuilder(builder: (context, BoxConstraints constraints) {
          return BlocBuilder<VelocityBloc<ProfileModel>,
              VelocityState<ProfileModel>>(
            bloc: profileViewModel!.profileModelBloc,
            builder: (context, state) {
              if (state is VelocityInitialState) {
                return const Center(
                  child: CircularProgressIndicator.adaptive(),
                );
              } else if (state is VelocityUpdateState) {
                return RefreshIndicator(
                  onRefresh: () => profileViewModel!.getUserProfileData(),
                  child: Column(
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            CircleAvatar(
                                radius: 50,
                                backgroundImage: NetworkImage(state
                                    .data.userDetails!.profilePhotoUrl
                                    .toString())),
                            Text(state.data.userDetails!.name.toString(),
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.bold)),
                            Text(state.data.userDetails!.email.toString(),
                                style: TextStyle(fontSize: 15.sp)),
                            SizedBox(height: 20.h),
                            Text(state.data.userDetails!.about.toString(),
                                textAlign: TextAlign.center),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      Text(state.data.postsCount.toString(),
                                          textAlign: TextAlign.center),
                                      const Text("Posts",
                                          textAlign: TextAlign.center),
                                    ],
                                  ),
                                  const Column(
                                    children: <Widget>[
                                      Text("0", textAlign: TextAlign.center),
                                      Text("Following",
                                          textAlign: TextAlign.center),
                                    ],
                                  ),
                                  const Column(
                                    children: <Widget>[
                                      Text("0", textAlign: TextAlign.center),
                                      Text("Follower",
                                          textAlign: TextAlign.center),
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
                          style: TextStyle(
                              fontSize: 15.sp, fontWeight: FontWeight.bold)),
                      GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: state.data.posts!.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisSpacing: 13,
                                  crossAxisSpacing: 5,
                                  crossAxisCount: 2),
                          itemBuilder: (context, index) {
                            var userPostData = state.data.posts![index];
                            return Column(
                              children: <Widget>[
                                Image.asset(MyAssets.assetsImageOnBoarding1),
                                Flexible(
                                  child: Row(
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: Text(
                                          userPostData.title.toString(),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      InkWell(
                                          onTap: () {},
                                          child: const Icon(
                                              Icons.more_vert_rounded))
                                    ],
                                  ),
                                )
                              ],
                            );
                          })
                    ],
                  ),
                );
              } else {
                return const SizedBox();
              }
            },
          );
        }),
      ),
    );
  }
}

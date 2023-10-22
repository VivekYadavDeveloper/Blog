
import 'package:auto_route/annotations.dart';
import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:bloc_learning/Core/Constant/color.dart';
import 'package:bloc_learning/Presentation/Screens/generalScreen/addPostScreen/add.post.screen.dart';
import 'package:bloc_learning/Presentation/Screens/generalScreen/categoryScreen/categories.screen.dart';
import 'package:bloc_learning/Presentation/Screens/generalScreen/profileScreen/profile.screen.dart';
import 'package:bloc_learning/Presentation/Screens/generalScreen/tagsScreen/tags.screen.dart';
import 'package:flutter/material.dart';

import '../homeScreen/home.screen.dart';

@RoutePage()
class BottomNavigationBar extends StatefulWidget {
  const BottomNavigationBar({super.key});

  @override
  State<BottomNavigationBar> createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<BottomNavigationBar> {
  List<TabItem> items = [
    const TabItem(
      icon: Icons.home,
    ),
    const TabItem(
      icon: Icons.shopify,
    ),
    const TabItem(
      icon: Icons.add,
    ),
    const TabItem(
      icon: Icons.tag,
    ),
    const TabItem(
      icon: Icons.person,
    )
  ];
  int visit = 0;

  List<Widget> pages = [
    const MyHomePage(),
    const CategoriesScreen(),
    const AddPostScreen(),
    const TagsScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(visit),
      bottomNavigationBar: BottomBarCreative(
        items: items,
        backgroundColor: MyColors.primaryColor,
        color: MyColors.iconColor,
        colorSelected: MyColors.activeColor,
        indexSelected: visit,
        onTap: (int index) => setState(() {
          visit = index;
          debugPrint(visit.toString());
        }),
      ),
    );
  }
}

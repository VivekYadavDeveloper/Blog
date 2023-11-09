import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bloc_learning/Data/Repo/repo.dart';
import 'package:bloc_learning/Data/ViewModel/add.tags.view.model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Core/Constant/color.dart';

import '../../../Widgets/custom.textfield.dart';

@RoutePage()
class AddTagsScreen extends StatefulWidget {
  const AddTagsScreen({super.key});

  @override
  State<AddTagsScreen> createState() => _AddTagsScreenState();
}

class _AddTagsScreenState extends State<AddTagsScreen> {
  final TextEditingController addTagsController = TextEditingController();
  AddTagsViewModel? addTagsViewModel;

  @override
  void initState() {
    addTagsViewModel = AddTagsViewModel(repository: context.read<Repository>());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: MyColors.primaryColor,
          // automaticallyImplyLeading: false,
          title: const Text("Add Tags"),
        ),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 40.h),
                CustomTextField.customTextField(
                  textEditingController: addTagsViewModel!.addTagsController,
                  hintText: "Title",
                ),
                SizedBox(height: 10.h),
                CustomTextField.customTextField(
                  textEditingController: addTagsViewModel!.addTagsController,
                  hintText: "Slug",
                ),
                SizedBox(height: 20.h),
                ElevatedButton(
                  onPressed: () => addTagsViewModel!.addNewTags(context),
                  child: const Text("Add New Tag"),
                ),
              ],
            )));
  }
}

import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bloc_learning/Data/Models/tags.model.dart';
import 'package:bloc_learning/Data/Repo/repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Core/Constant/color.dart';
import '../../../../Data/ViewModel/updates.tags.view.model.dart';
import '../../../Widgets/custom.textfield.dart';

@RoutePage<TagsModel>()
class UpdateTagsScreen extends StatefulWidget {
  const UpdateTagsScreen({super.key, required this.tag});

  final Tag tag;

  @override
  State<UpdateTagsScreen> createState() => _UpdateTagsScreenState();
}

class _UpdateTagsScreenState extends State<UpdateTagsScreen> {
  late UpdateTagsViewModel updateTagsViewModel;

  @override
  void initState() {
    updateTagsViewModel =
        UpdateTagsViewModel(repository: context.read<Repository>());
    updateTagsViewModel.updateTagsController.text = widget.tag.title.toString();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: MyColors.primaryColor,
          // automaticallyImplyLeading: false,
          title: const Text("Update Tags"),
        ),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 40.h),
                CustomTextField.customTextField(
                  textEditingController:
                      updateTagsViewModel.updateTagsController,
                  hintText: "Title",
                ),
                SizedBox(height: 10.h),
                CustomTextField.customTextField(
                  textEditingController:
                      updateTagsViewModel.updateTagsController,
                  hintText: "Slug",
                ),
                SizedBox(height: 20.h),
                ElevatedButton(
                  onPressed: () => updateTagsViewModel.updateTags(context, widget.tag.id.toString()),
                  child: const Text("Update Tag"),
                ),
              ],
            )));
  }
}

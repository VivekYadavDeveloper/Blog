import 'package:bloc_learning/Core/Constant/color.dart';
import 'package:flutter/material.dart';

import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../Widgets/custom.textfield.dart';

class AddPostScreen extends StatefulWidget {
  const AddPostScreen({super.key});

  @override
  State<AddPostScreen> createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController slugController = TextEditingController();
  final QuillController quillController = QuillController.basic();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
        automaticallyImplyLeading: false,
        title: "Add Post".text.make(),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.check))],
      ),
      body: SingleChildScrollView(
        child: LayoutBuilder(builder: (context, BoxConstraints constraint) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Image.asset("assets/img/P.jpeg"),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.camera,
                          size: 45.spMax,
                          color: MyColors.primaryColor,
                        ))
                  ],
                ),
                SizedBox(height: 25.h),
                CustomTextField.customTextField(
                  textEditingController: titleController,
                  hintText: "Title",
                  validator: (val) => val!.isEmpty ? 'Field Is Empty' : null,
                ),
                SizedBox(height: 25.h),
                CustomTextField.customTextField(
                  textEditingController: slugController,
                  hintText: "Slug",
                  validator: (val) => val!.isEmpty ? 'Field Is Empty' : null,
                ),
                SizedBox(height: 25.h),
                Container(
                  height: 40.h,
                  padding: EdgeInsets.all(8.sp),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: MyColors.primaryColor),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      "Tags".text.make(),
                      const Icon(Icons.chevron_right)
                    ],
                  ),
                ),
                SizedBox(height: 25.h),
                Container(
                  height: 40.h,
                  padding: EdgeInsets.all(8.sp),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: MyColors.primaryColor),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      "Categories".text.make(),
                      const Icon(Icons.chevron_right)
                    ],
                  ),
                ),
                20.h.heightBox,
                QuillToolbar.basic(controller: quillController),
                Container(
                  height: 500.h,
                  child: QuillEditor.basic(
                      controller: quillController, readOnly: false),
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}

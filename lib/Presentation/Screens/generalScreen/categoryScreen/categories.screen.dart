import 'package:bloc_learning/Core/Constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
        automaticallyImplyLeading: false,
        title: const Text("Categories"),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: LayoutBuilder(builder: (context, BoxConstraints constraints) {
          return ListView.builder(
              itemCount: 15,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: Text("${index + 1}"),
                    title: const Text("Testing"),
                    trailing: SizedBox(
                      width: 100.w,
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.edit_note)),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.delete_sweep_rounded)),
                        ],
                      ),
                    ),
                  ),
                );
              });
        }),
      ),
    );
  }
}

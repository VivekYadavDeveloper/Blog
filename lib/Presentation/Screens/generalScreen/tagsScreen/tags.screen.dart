import 'package:bloc_learning/Data/Models/tags.model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_bloc/velocity_bloc.dart';
import '../../../../Core/Constant/color.dart';
import '../../../../Data/Repo/repo.dart';
import '../../../../Data/ViewModel/tags.view.model.dart';

class TagsScreen extends StatefulWidget {
  const TagsScreen({super.key});

  @override
  State<TagsScreen> createState() => _TagsScreenState();
}

class _TagsScreenState extends State<TagsScreen> {
  late TagsViewModel tagsViewModel;

  @override
  void initState() {
    tagsViewModel = TagsViewModel(repository: context.read<Repository>());
    tagsViewModel.fetchAllTags();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
        automaticallyImplyLeading: false,
        title: const Text("Tags"),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: LayoutBuilder(builder: (context, BoxConstraints constraints) {
          return BlocBuilder<VelocityBloc<TagsModel>, VelocityState<TagsModel>>(
            bloc: tagsViewModel.tagsModelBloc,
            builder: (context, state) {
              if (state is VelocityInitialState) {
                return const Center(
                  child: CircularProgressIndicator.adaptive(),
                );
              } else if (state is VelocityUpdateState) {
                return ListView.builder(
                  itemCount: state.data.tags!.length,
                  itemBuilder: (context, index) {
                    var tagsData = state.data.tags![index];
                    return Card(
                      child: ListTile(
                        leading: Text(tagsData.id.toString()),
                        title: Text(tagsData.title.toString()),
                        trailing: SizedBox(
                          width: 100.w,
                          child: Row(
                            children: <Widget>[
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.edit_note),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.delete_sweep_rounded),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              }
              return const SizedBox();
            },
          );
        }),
      ),
    );
  }
}

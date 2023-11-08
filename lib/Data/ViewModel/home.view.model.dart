import 'package:bloc_learning/Data/Models/home.model.dart';
import 'package:bloc_learning/Data/Repo/repo.dart';
import 'package:velocity_bloc/cubit/velocity_cubit/velocity_cubit.dart';

class HomeViewModel {
  final Repository repository;

  HomeViewModel({required this.repository});

  final VelocityBloc<HomeModel> postsBloc =
      VelocityBloc<HomeModel>(HomeModel());

  fetchAllPosts() async {
    var postsData = await repository.postsRepo.getAllPosts();

    if (postsData.status == 1) {
      postsBloc.onUpdateData(postsData);
    }
  }
}

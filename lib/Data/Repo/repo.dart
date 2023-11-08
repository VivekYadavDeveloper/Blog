import 'package:bloc_learning/Data/Repo/auth.repo.dart';
import 'package:bloc_learning/Data/Repo/post.repo.dart';

import 'tags.repo.dart';

class Repository {
  Repository(
      {required this.tagsRepo, required this.authRepo, required this.postsRepo});

  final TagsRepo tagsRepo;
  final AuthRepo authRepo;
  final PostsRepo postsRepo;
}

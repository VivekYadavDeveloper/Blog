import 'package:bloc_learning/Data/Repo/auth.repo.dart';

import 'tags.repo.dart';

class Repository {
  Repository({required this.tagsRepo, required this.authRepo});

  final TagsRepo tagsRepo;
  final AuthRepo authRepo;
}

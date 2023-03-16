import 'package:get_it/get_it.dart';
import 'package:hwan_sudoku/repository/common_repository.dart';
import 'package:hwan_sudoku/repository/common_repository_impl.dart';

final GetIt locator = GetIt.instance;
void setupLocator() {
  locator.registerFactory<CommonRepository>(() => CommonRepositoryImpl());
}
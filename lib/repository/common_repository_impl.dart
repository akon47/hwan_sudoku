import 'package:hwan_sudoku/repository/common_repository.dart';

class CommonRepositoryImpl extends CommonRepository {
  @override
  Future<String> getTest() async {
    await Future.delayed(const Duration(microseconds: 1000));
    return 'test';
  }
}

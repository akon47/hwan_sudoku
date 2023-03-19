import '../repository/common_repository.dart';
import 'common/page_view_model.dart';

class StageViewModel extends PageViewModel {
  StageViewModel({
    required this.commonRepo,
  }) : super(title: 'StageView');

  final CommonRepository commonRepo;
}

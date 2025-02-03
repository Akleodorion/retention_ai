import 'package:retention_ai/features/sections/domain/repository/section_repository.dart';

class DeleteSectionUsecase {
  final SectionRepository _repository;

  DeleteSectionUsecase({required SectionRepository repository}) : _repository = repository;

  void call() {
    return _repository.deleteSection();
  }
}

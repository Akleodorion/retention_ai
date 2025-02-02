import 'package:retention_ai/features/sections/domain/repositories/section_repository.dart';

class DeleteSectionUsecase {
  final SectionRepository _repository;

  DeleteSectionUsecase({required repository}) : _repository = repository;

  void call() {
    return _repository.deleteSection();
  }
}

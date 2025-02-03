import 'package:retention_ai/features/sections/domain/entity/section.dart';
import 'package:retention_ai/features/sections/domain/repository/section_repository.dart';

class CreateSectionUsecase {
  final SectionRepository _repository;

  CreateSectionUsecase({ required repository}) : _repository = repository;

  Section call() {
    return _repository.createSection();
  }
}

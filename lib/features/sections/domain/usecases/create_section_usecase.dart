import 'package:retention_ai/features/sections/domain/entities/section.dart';
import 'package:retention_ai/features/sections/domain/repositories/section_repository.dart';

class CreateSectionUsecase {
  final SectionRepository _repository;

  CreateSectionUsecase({ required repository}) : _repository = repository;

  Section call() {
    return _repository.createSection();
  }
}

import 'package:retention_ai/features/sections/domain/entities/section.dart';
import 'package:retention_ai/features/sections/domain/repositories/section_repository.dart';

class UpdateSectionsUsecase {
  final SectionRepository _repository;

  UpdateSectionsUsecase({ required  repository}) : _repository = repository;

  Section call() {
    return _repository.updateSection();
  }
}

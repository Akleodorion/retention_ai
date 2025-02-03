import 'package:retention_ai/features/sections/domain/entity/section.dart';
import 'package:retention_ai/features/sections/domain/repository/section_repository.dart';

class UpdateSectionsUsecase {
  final SectionRepository _repository;

  UpdateSectionsUsecase({ required  repository}) : _repository = repository;

  Section call() {
    return _repository.updateSection();
  }
}

import 'package:retention_ai/features/sections/domain/entity/section.dart';
import 'package:retention_ai/features/sections/domain/repository/section_repository.dart';

class FetchSectionsUsecase {
  final SectionRepository _repository;

  FetchSectionsUsecase({ required  repository}) : _repository = repository;

  List<Section> call() {
    return _repository.fetchSections();
  }
}

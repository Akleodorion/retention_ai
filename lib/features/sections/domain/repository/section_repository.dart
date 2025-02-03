
import 'package:retention_ai/features/sections/domain/entity/section.dart';

abstract class SectionRepository {
  List<Section> fetchSections();
  Section createSection();
  void deleteSection();
  Section updateSection();
}

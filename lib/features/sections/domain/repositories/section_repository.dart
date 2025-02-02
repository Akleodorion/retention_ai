
import 'package:retention_ai/features/sections/domain/entities/section.dart';

abstract class SectionRepository {
  List<Section> fetchSections();
  Section createSection();
  void deleteSection();
  Section updateSection();
}

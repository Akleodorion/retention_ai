import 'package:retention_ai/features/sections/domain/entity/section.dart';

abstract class SectionLocalDataSource {
  Future<List<Section>> fetchSections();
}


class SectionLocalDataSourceImpl extends SectionLocalDataSource {

  @override
  Future<List<Section>> fetchSections() {

    // faire la requette sql et recuperer un JSON
    // Se servire de ce JSON pour creer les Sections necessaires
    // retourner la liste de Section
    throw UnimplementedError();
  }
}

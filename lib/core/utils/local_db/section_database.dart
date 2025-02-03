import 'package:retention_ai/core/utils/local_db/retention_database.dart';
import 'package:retention_ai/features/sections/data/model/section_model.dart';
import 'package:sqflite/sqflite.dart';

abstract class SectionDatabase {
  Future<bool> insertSection({required SectionModel section});
}

class SectionDatabaseImpl extends SectionDatabase {
  final RetentionDatabase _retentionDatabase;

  SectionDatabaseImpl({ required retentionDatabase}) : _retentionDatabase = retentionDatabase;

  @override
  Future<bool> insertSection({required SectionModel section}) async {
    final Database database = await _retentionDatabase.openDb();

    final int success = await database.insert(
      'sections',
      section.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );

    return success == 1 ? true : false;
  }
}

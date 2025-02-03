import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

abstract class RetentionDatabase {

  /// Returns a DB connection
  Future<Database> openDb();
}


class RetentionDatabaseImpl implements RetentionDatabase {

  @override
  Future<Database> openDb() async {
    WidgetsFlutterBinding.ensureInitialized();

    final database = openDatabase(
      join(await getDatabasesPath(), 'rentention_ai_database.db'),

      onCreate: (db, version) {
        return db.execute('CREATE TABLE sections(id INTEGER PRIMARY KEY, name TEXT, description TEXT)');
      },

      version: 1,
    );

    return database;
  }

}

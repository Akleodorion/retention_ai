import 'package:retention_ai/features/sections/domain/entity/section.dart';

class SectionModel extends Section {
  const SectionModel({required super.name, required super.description, required super.id});

  factory SectionModel.fromJson({required Map<String, dynamic> json}) {
    return SectionModel(name: json['name'], description: json['description'], id: json['id']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
    };
  }
}

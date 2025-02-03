import 'package:equatable/equatable.dart';
import 'package:retention_ai/features/sections/domain/entity/section.dart';

class Subsection extends Equatable {

  final String name;
  final String description;
  final Section section;

  const Subsection({required this.name, required this.description, required this.section});

  @override
  List<Object?> get props => [name, description, section];
}

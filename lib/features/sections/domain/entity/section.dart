

import 'package:equatable/equatable.dart';

class Section extends Equatable {

  final int id;
  final String name;
  final String description;

  const Section({required this.name, required this.description, required this.id});

  @override
  List<Object?> get props => [name, description, id];
}

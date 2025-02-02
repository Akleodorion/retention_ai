

import 'package:equatable/equatable.dart';

class Section extends Equatable {

  final String name;
  final String description;

  const Section({required this.name, required this.description});

  @override
  List<Object?> get props => [name, description];
}

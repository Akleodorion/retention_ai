import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure([List properties = const <dynamic>[]]);
}

class ServerFailure extends Failure {
  final String errorMessage;

  const ServerFailure({required this.errorMessage});

  @override
  List<Object?> get props => [errorMessage];
}

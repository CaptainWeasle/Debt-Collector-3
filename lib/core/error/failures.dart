import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  List<Object> get props => [];
}

//general Failures
//wird im Moment nicht verwendet, weil es noch keine Serverfunktionen gibt
class ServerFailure extends Failure {}

class DatabaseFailure extends Failure {}

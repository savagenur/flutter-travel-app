// import 'package:equatable/equatable.dart';

// abstract class CubitStates extends Equatable{}

// class InitialState extends CubitStates{
//   @override
//   // TODO: implement props
//   List<Object> get props => [];
// }

// class WelcomeState extends CubitStates{
//   @override
//   // TODO: implement props
//   List<Object> get props => [];

// }

// import 'package:equatable/equatable.dart';

// abstract class CubitStates extends Equatable {}

// class InitialState extends CubitStates {
//   @override
//   // TODO: implement props
//   List<Object> get props => [];
// }

// class WelcomeState extends CubitStates{
//   @override
//   // TODO: implement props
//   List<Object> get props => [];

// }

import 'package:equatable/equatable.dart';

import '../model/data_model.dart';

abstract class CubitStates extends Equatable {}

class InitialState extends CubitStates {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class WelcomeState extends CubitStates {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class LoadingState extends CubitStates {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class LoadedState extends CubitStates {
  LoadedState({required this.places});

  final List<DataModel> places;

  @override
  // TODO: implement props
  List<Object> get props => [places];
}

class DetailState extends CubitStates {
  DetailState({required this.place});
  final DataModel place;
  @override
  // TODO: implement props
  List<Object> get props => [place];
}

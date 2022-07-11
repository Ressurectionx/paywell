part of 'mpin_bloc.dart';

abstract class MPinEvent extends Equatable {
  const MPinEvent();
  @override
  List<Object> get props => [];
}

class GetMPin extends MPinEvent{}

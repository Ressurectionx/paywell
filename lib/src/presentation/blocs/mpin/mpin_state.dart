part of 'mpin_bloc.dart';

abstract class MPinState extends Equatable {
  const MPinState();
  @override
  List<Object> get props => [];
}

class MPinInitial extends MPinState {}

// ignore: must_be_immutable
class MPinTyping extends MPinState {
  TextEditingController controller;
  MPinTyping(this.controller);
}


class MPinAuthenticating extends MPinState {}

class MPinAuthenticated extends MPinState {}

class MPinAuthenticationFailed extends MPinState {
  String error;
  MPinAuthenticationFailed(this.error);
}




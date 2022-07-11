import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'mpin_event.dart';
part 'mpin_state.dart';

class MpinBloc extends Bloc<MpinEvent, MpinState> {
  MpinBloc() : super(MpinInitial()) {
    on<MpinEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}

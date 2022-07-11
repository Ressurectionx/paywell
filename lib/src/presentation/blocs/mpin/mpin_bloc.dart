import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'mpin_event.dart';
part 'mpin_state.dart';

class MPinBloc extends Bloc<MPinEvent, MPinState> {
  MPinBloc() : super(MPinInitial()) {
    on<MPinEvent>((event, emit) {
      emit(MPinAuthenticated());

    });

  }
}

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class PageCubit extends Cubit<String> {
  PageCubit() : super("/home");

  void setPage(String newPage) {
    emit(newPage);
  }
}

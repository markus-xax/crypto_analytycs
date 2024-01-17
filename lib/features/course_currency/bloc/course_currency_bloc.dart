import 'dart:async';

import 'package:crypto_analytycs/repositories/currency/course_currency_interface.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../models/curency/currency_model.dart';

part 'course_currency_event.dart';
part 'course_currency_state.dart';

class CurrencyListBloc extends Bloc<CurrencyListEvent, CurrencyListState> {
  CurrencyListBloc(this.courseCurrencyInterface)
      : super(CurrencyListInitial()) {
    on<LoadCurrencyList>((event, emit) async {
      try {
        if (state is! CurrencyListLoaded) {
          emit(CurrencyListLoading());
        }
        final courseCurrency = await courseCurrencyInterface.getCourseList();
        emit(CurrencyListLoaded(currencyList: courseCurrency));
      } catch (e) {
        emit(CurrencuListLoadingFailed(exception: e));
      } finally {
        event.completer?.complete();
      }
    });
  }

  final CourseCurrencyInterface courseCurrencyInterface;
}

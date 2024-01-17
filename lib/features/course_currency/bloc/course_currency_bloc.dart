import 'package:crypto_analytycs/repositories/currency/course_currency_interface.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../models/curency/currency_model.dart';

part 'course_currency_event.dart';
part 'course_currency_state.dart';

class CurrencyListBloc extends Bloc<CurrencyListEvent, CurrencyListState> {
  CurrencyListBloc(this.courseCurrencyInterface)
      : super(CurrencyListInitial()) {
    on<LoadCurrencyList>((event, emit) async {
      try {
        final courseCurrency = await courseCurrencyInterface.getCourseList();
        emit(CurrencyListLoaded(currencyList: courseCurrency));
      } catch (e) {
        emit(CurrencuListLoadingFailed(exception: e));
      }
    });
  }

  final CourseCurrencyInterface courseCurrencyInterface;
}

part of 'course_currency_bloc.dart';

class CurrencyListState {}

class CurrencyListInitial extends CurrencyListState {}

class CurrencyListLoading extends CurrencyListState {}

class CurrencyListLoaded extends CurrencyListState {
  final CurencyModel currencyList;

  CurrencyListLoaded({required this.currencyList});
}

class CurrencuListLoadingFailed extends CurrencyListState {
  final Object exception;

  CurrencuListLoadingFailed({required this.exception});
}

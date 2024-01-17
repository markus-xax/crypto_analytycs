part of 'course_currency_bloc.dart';

abstract class CurrencyListState extends Equatable {}

class CurrencyListInitial extends CurrencyListState {
  @override
  List<Object?> get props => [];
}

class CurrencyListLoading extends CurrencyListState {
  @override
  List<Object?> get props => [];
}

class CurrencyListLoaded extends CurrencyListState {
  final CurencyModel currencyList;

  CurrencyListLoaded({required this.currencyList});

  @override
  List<Object?> get props => [currencyList];
}

class CurrencuListLoadingFailed extends CurrencyListState {
  final Object exception;

  CurrencuListLoadingFailed({required this.exception});

  @override
  List<Object?> get props => [exception];
}

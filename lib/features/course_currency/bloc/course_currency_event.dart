part of 'course_currency_bloc.dart';

abstract class CurrencyListEvent extends Equatable {}

class LoadCurrencyList extends CurrencyListEvent {
  final Completer? completer;

  LoadCurrencyList(this.completer);
  
  @override
  List<Object?> get props => [completer];
}

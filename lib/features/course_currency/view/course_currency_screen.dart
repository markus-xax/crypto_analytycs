import 'package:crypto_analytycs/features/course_currency/bloc/course_currency_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../../repositories/currency/course_currency_interface.dart';
import '../widgets/widgets.dart';

class CourencyScreen extends StatefulWidget {
  const CourencyScreen({super.key, required this.title});

  final String title;

  @override
  State<CourencyScreen> createState() => _CourencyScreenState();
}

class _CourencyScreenState extends State<CourencyScreen> {
  final _currencyListBloc =
      CurrencyListBloc(GetIt.instance<CourseCurrencyInterface>());

  @override
  void initState() {
    super.initState();
    _currencyListBloc.add(LoadCurrencyList());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            widget.title,
          ),
          centerTitle: true,
          backgroundColor: Colors.black12,
        ),
        body: BlocBuilder<CurrencyListBloc, CurrencyListState>(
          bloc: _currencyListBloc,
          builder: (context, state) {
            if (state is CurrencyListLoaded) {
              return (ListView.separated(
                  itemCount: state.currencyList.quotes!.toJson().length,
                  separatorBuilder: (context, index) => const Divider(
                        color: Color.fromARGB(23, 0, 0, 0),
                      ),
                  itemBuilder: (context, i) {
                    return CurrencyTile(
                      coinName: state.currencyList.quotes!
                          .toJson()
                          .keys
                          .toList()[i]
                          .toString(),
                      price: state.currencyList.quotes!
                          .toJson()
                          .values
                          .toList()[i]
                          .toString(),
                    );
                  }));
            }

            if (state is CurrencuListLoadingFailed) {
              return const Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Somfing went wrong',
                    style: TextStyle(fontSize: 21),
                  ),
                  Text(
                    'please try again later',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ));
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ));
  }
}

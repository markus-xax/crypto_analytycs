
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';


import '../../../repositories/currency/course_currency_interface.dart';
import '../../../repositories/currency/course_currencys.dart';
import '../widgets/widgets.dart';

class CourencyScreen extends StatefulWidget {
  const CourencyScreen({super.key, required this.title});

  final String title;

  @override
  State<CourencyScreen> createState() => _CourencyScreenState();
}

class _CourencyScreenState extends State<CourencyScreen> {
  CurencyModel? _curencyModel;
  late List<dynamic> name, price;

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
      body: (_curencyModel == null || _curencyModel?.quotes == null)
          ? const SizedBox()
          : ListView.separated(
              itemCount: _curencyModel!.quotes!.toJson().length,
              separatorBuilder: (context, index) => const Divider(
                    color: Color.fromARGB(23, 0, 0, 0),
                  ),
              itemBuilder: (context, i) {
                return CurrencyTile(
                  coinName: name[i].toString(),
                  price: price[i].toString(),
                );
              }),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.download),
        onPressed: () async {
          _curencyModel = await GetIt.instance<CourseCurrencyInterface>().getCourseList();
          name = _curencyModel!.quotes!.toJson().keys.toList();
          price = _curencyModel!.quotes!.toJson().values.toList();
          setState(() {});
        },
      ),
    );
  }
}

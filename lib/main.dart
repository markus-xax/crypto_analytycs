import 'package:crypto_analytycs/repositories/currency/course_currency_interface.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'app.dart';
import 'repositories/currency/course_currencys.dart';

void main() {
  GetIt.instance.registerLazySingleton<CourseCurrencyInterface>(
      () => CourseCurrencyRepository(dio: Dio()));
  runApp(const CourseCurrencyScreen());
}

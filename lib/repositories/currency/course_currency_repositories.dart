
import 'package:crypto_analytycs/models/curency/models.dart';
import 'package:dio/dio.dart';

import 'course_currency_interface.dart';

class CourseCurrencyRepository implements CourseCurrencyInterface {

  CourseCurrencyRepository({required this.dio});

  final Dio dio;

  @override
  Future<CurencyModel> getCourseList() async {
    final responce = await dio.get(
      'http://apilayer.net/api/live?access_key=579225342d4179effa17aa7b5f9fc4b7&currencies=EUR,GBP,CAD,PLN,RUB&source=USD&format=1'
    );
    CurencyModel curencyModel = CurencyModel.fromJson(responce.data);
    return curencyModel;
  }

}
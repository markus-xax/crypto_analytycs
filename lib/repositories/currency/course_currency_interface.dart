import '../../models/curency/currency_model.dart';

abstract class CourseCurrencyInterface {
  Future<CurencyModel> getCourseList();
}
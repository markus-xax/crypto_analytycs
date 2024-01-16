import '../features/course_currency/currency_list.dart';
import '../features/currency_course_single/currency_course_single.dart';


final routes = {
  '/': (context) => const CourencyScreen(
        title: 'Course Currency',
      ),
  '/coin': (context) => const CoinScreen(),
};

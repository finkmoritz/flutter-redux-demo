import 'package:intl/intl.dart';

class Util {

  static String formatPrize(double prize) {
    return NumberFormat("#,##0.00", "en_US").format(prize) + ' \$';
  }
}

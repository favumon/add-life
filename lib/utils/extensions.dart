import 'package:add_life/constants/constants.dart';

const ext = 0;

extension CurrencyFormat on double {
  String toCurrency() {
    return '$currencySymbol $this';
  }
}

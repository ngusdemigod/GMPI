import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class NairaCurrencyFormatter extends TextInputFormatter {
  final NumberFormat _formatter = NumberFormat.currency(
    locale: 'en_NG',
    symbol: '₦',
    decimalDigits: 0,
  );

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    if (newValue.text.isEmpty) {
      return newValue.copyWith(text: '');
    }

    // Handle backspace when the cursor is after the symbol or a comma
    if (newValue.text.length < oldValue.text.length) {
      // Just allow the deletion, but we'll reformat anyway
    }

    // Strip everything except digits
    String digitsOnly = newValue.text.replaceAll(RegExp(r'[^\d]'), '');
    
    if (digitsOnly.isEmpty) {
      return TextEditingValue(
        text: '₦ ',
        selection: TextSelection.collapsed(offset: 2),
      );
    }

    final double value = double.parse(digitsOnly);
    final String formatted = _formatter.format(value);
    
    // We want the format to be "₦ 1,000" (with a space)
    final String result = formatted.replaceFirst('₦', '₦ ');

    return TextEditingValue(
      text: result,
      selection: TextSelection.collapsed(offset: result.length),
    );
  }
}

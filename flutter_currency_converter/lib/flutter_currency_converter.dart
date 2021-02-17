import 'dart:async';

import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:http/http.dart';

import 'Currency.dart';
import 'Http.dart';

class FlutterCurrencyConverter {
  static const MethodChannel _channel =
      const MethodChannel('flutter_currency_converter');

  /*
  from currency and to currency
  must provide type

  ex - convert(Currency(Currency.USD),Currency(Currency.LKR));

  */
  static Future<double> convert(Currency from, Currency to) async {
    try {
      if (from.type.isEmpty || to.type.isEmpty) {
        print("type or amount is missing");
        return null;
      }

      if (from.amount == null) {
        from.amount = 1.0;
      }
      String url =
          "${Http.ENDPOINT}q=${from.type}_${to.type}&${Http.API_KEY}&${Http.COMPACT}";

      Response resp = await Http.get(url);

      print(resp.body);

      double unitValue = jsonDecode(resp.body)['${from.type}_${to.type}'];

      double value = from.amount * unitValue;
      return value;
    } catch (err) {
      print("convert err $err");
      return null;
    }
  }
}

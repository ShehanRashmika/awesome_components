import 'package:awesomecomponents/Currency.dart';
import 'package:awesomecomponents/awesomecomponents.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String usd_lkr = "";
  String aud_eur = "";
  String aed_chf = "";

  @override
  void initState() {
    super.initState();

    getAmounts();
  }

  void getAmounts() async {
    var usd_lkr_ = await CurrencyConverter.convert(
        Currency(Currency.USD), Currency(Currency.LKR));

    var aud_eur_ = await CurrencyConverter.convert(
        Currency(Currency.AUD, amount: 200), Currency(Currency.EUR));

    var aed_chf_ = await CurrencyConverter.convert(
        Currency(Currency.AED, amount: 945), Currency(Currency.CHF));

    setState(() {
      usd_lkr = usd_lkr_.toString();
      aud_eur = aud_eur_.toString();
      aed_chf = aed_chf_.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Currency Convertor Example'),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "1 USD to LKR = ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  Text(
                    "${usd_lkr}",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "200 AUD to EUR = ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  Text(
                    "${aud_eur}",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "945 AED to CHF = ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  Text(
                    "${aed_chf}",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

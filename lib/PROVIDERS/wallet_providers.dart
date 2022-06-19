import 'package:flutter/material.dart';
import 'package:money_formatter/money_formatter.dart';
import 'package:provider/provider.dart';



class WalletProvider with ChangeNotifier{
final double mainuserBalance = 9500.45;
String  get userBalance => _userBalance.output.symbolOnLeft;
MoneyFormatterOutput  get muserBalance => _userBalance.output;

final MoneyFormatter _userBalance = MoneyFormatter(
    amount: 9500.45
);


}

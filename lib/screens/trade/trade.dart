import 'package:flutter/material.dart';
import 'package:lyotrade/screens/common/bottomnav.dart';
import 'package:lyotrade/screens/common/header.dart';
import 'package:lyotrade/utils/Colors.utils.dart';

class Trade extends StatefulWidget {
  static const routeName = '/trade';
  const Trade({Key? key}) : super(key: key);

  @override
  State<Trade> createState() => _TradeState();
}

class _TradeState extends State<Trade> {
  String? _isselected;
  List<Map> _myjson = [
    {'id': '1', 'image': 'assets/images/currency.png', 'name': 'Usd'},
    {'id': '2', 'image': 'assets/images/currency.png', 'name': 'Usd'}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        context,
        null,
        Text('Loan'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Flexible(
                  child: new Container(
                    child: new Text(
                      'Borrow Against Crypto',
                      overflow: TextOverflow.ellipsis,
                      style: new TextStyle(
                        fontSize: 18.0,
                        fontFamily: 'Yantramanav',
                        color: whiteTextColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Flexible(
                  child: new Container(
                    child: new Text(
                      'Your Collateral',
                      overflow: TextOverflow.ellipsis,
                      style: new TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Yantramanav',
                        color: whiteTextColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   children: [
            //     Expanded(
            //         child: DropdownButtonHideUnderline(
            //       child: ButtonTheme(
            //           alignedDropdown: true,
            //           child: DropdownButton<dynamic>(
            //             hint: const Text('select'),
            //             value: _isselected,
            //             onChanged: (newValue) {
            //               setState(() {
            //                 _isselected = newValue.toString();
            //               });
            //             },
            //             items: _myjson
            //                 .map((e) => DropdownMenuItem(
            //                       child: Row(
            //                         children: [
            //                           Image.asset(e['image']),
            //                           Container(
            //                             child: Text(e['name']),
            //                           )
            //                         ],
            //                       ),
            //                     ))
            //                 .toList(),
            //           )),
            //     ))
            //   ],
            // )
          ],
        ),
      ),
      bottomNavigationBar: bottomNav(context),
    );
  }
}

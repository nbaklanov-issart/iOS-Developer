import 'package:flutter/material.dart';

import './tabs/brainTreeTab.dart';
import './tabs/stripeTab.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final _PAYMENT_PROVIDERS_COUNT = 2;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Payment Test Demo',
      theme: ThemeData(        
        primarySwatch: Colors.blue,
      ),
      home: DefaultTabController(
        length: _PAYMENT_PROVIDERS_COUNT,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: <Widget>[
                Tab( icon: Icon(Icons.add_alarm)),
                Tab( icon: Icon(Icons.add_comment)),
              ],              
            ),
            title: Text("Select payment method"),
          ),
          body: TabBarView(
            children: <Widget>[
              StripeTab(),
              BrainTreeTab()
            ],
          ),
        ),
      ),
    );
  }
}

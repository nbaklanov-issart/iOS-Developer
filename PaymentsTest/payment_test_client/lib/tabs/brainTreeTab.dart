import 'package:flutter/material.dart';

import '../network/serverApi.dart';

class BrainTreeTab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {    
    return BrainTreeTabState();
  }
}


class BrainTreeTabState extends State<BrainTreeTab> {
  @override
  Widget build(BuildContext context) {    
    return Row();
  }

  @override
  void initState() {
    super.initState();
    ServerApi().getStripeCardsList();
  }
}
  


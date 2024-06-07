import 'package:flutter/material.dart';

import '../orders/orders_auctions.dart';
import '../orders/orders_executed.dart';
import '../orders/orders_gtt.dart';
import '../orders/orders_ipo.dart';
import '../orders/orders_open.dart';

const Color clr1 = Color(0xFFEEEEEE);
const Color clr2 = Color(0xFF616161);
const Color clr3 = Color(0xFF2196F3);

class orders_appBar extends StatelessWidget implements PreferredSizeWidget {
  const orders_appBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: clr1,
      // centerTitle: true,
      title: const Text(
        'Orders',
        style:
            TextStyle(fontSize: 25, fontWeight: FontWeight.w600, color: clr2),
      ),
      elevation: 4,
      bottom: const TabBar(
        labelColor: clr3,
        unselectedLabelColor: clr2,
        labelPadding: EdgeInsets.only(left: 20, right: 20),
        labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        isScrollable: true,
        tabs: [
          Tab(text: 'Open'),
          Tab(
            text: 'Executed',
          ),
          Tab(
            text: 'GTT',
          ),
          Tab(
            text: 'IPO',
          ),
          Tab(
            text: 'Auctions',
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => throw UnimplementedError();
}

class orders_body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        open(),
        executed(),
        gtt(),
        ipo(),
        auctions(),
      ],
    );
  }
}

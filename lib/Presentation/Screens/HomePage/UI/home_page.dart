import 'package:flutter/material.dart';

import '../../../Components/app_bar.dart';
import '../../../Declarations/constants.dart';
import '../Widgets/a_app_bar_action.dart';
import '../Widgets/b_list_view.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        appBarTitle: widget.title,
        centerTitle: false,
        actionWidgets: [
          AppBarAction(icondata: Icons.notifications, appBarFun: () {}),
          AppBarAction(icondata: Icons.person, appBarFun: () {})
        ],
      ),
      body: const ListViewBldr(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: primaryColor,
        child: const Icon(Icons.add),
      ),
    );
  }
}

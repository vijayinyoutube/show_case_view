import 'package:flutter/material.dart';
import 'package:showcaseview/showcaseview.dart';

import '../../../../Data/Models/home_page_model.dart';
import '../../../Declarations/constants.dart';

class ListViewBldr extends StatefulWidget {
  const ListViewBldr({Key? key}) : super(key: key);

  @override
  State<ListViewBldr> createState() => _ListViewBldrState();
}

class _ListViewBldrState extends State<ListViewBldr> {
  final GlobalKey globalKey = GlobalKey();
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
        (_) => ShowCaseWidget.of(context).startShowCase([globalKey]));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: listData.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Showcase(
                key: index == 0 ? globalKey : GlobalKey(),
                title: 'Profile',
                description: 'User\'s profile picture appears here',
                shapeBorder: const CircleBorder(),
                child: CircleAvatar(
                  backgroundColor: secondaryColor.withOpacity(0.25),
                  child: Text(
                    listData[index].name[0],
                    style: TextStyle(color: primaryColor),
                  ),
                ),
              ),
              title: Text(listData[index].name),
              subtitle: Text(listData[index].description),
              trailing: Text(listData[index].time),
            ),
          );
        });
  }
}

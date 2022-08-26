import 'package:flutter/material.dart';

import '../../../../Data/Models/home_page_model.dart';
import '../../../Declarations/constants.dart';

class ListViewBldr extends StatelessWidget {
  const ListViewBldr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: listData.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: secondaryColor.withOpacity(0.25),
                child: Text(
                  listData[index].name[0],
                  style: TextStyle(color: primaryColor),
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

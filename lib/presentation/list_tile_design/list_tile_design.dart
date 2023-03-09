import 'package:flutter/material.dart';
import 'package:flutter_pagination/theme/custom_theme.dart';

class ListTileDesign {
  static listDesign(int id, String todo) {
    return ListTile(
      leading: CircleAvatar(
        radius: 20,
        child: Text(id.toString()),
      ),
      title: Text(
        todo,
        style: const TextStyle(color: CustomTheme.primaryColor),
      ),
    );
    // return Center(
    //     child: Container(
    //   height: 80,
    //   width: 300,
    //   alignment: Alignment.center,
    //   margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    //   decoration: BoxDecoration(
    //     borderRadius: BorderRadius.circular(10),
    //     gradient: LinearGradient(
    //       begin: Alignment.centerLeft,
    //       end: Alignment.centerRight,
    //       colors: show ? CustomTheme.gradient2 : CustomTheme.gradient1,
    //     ),
    //   ),
    //   child: Text(
    //     "todo 1",
    //     style: TextStyle(
    //       color: Theme.of(context).primaryColor,
    //       fontWeight: FontWeight.w300,
    //     ),
    //   ),
    // ));
  }
}

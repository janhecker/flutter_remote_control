import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_remote_control/navbar/menu_constants.dart';

StreamController<bool> controller = StreamController<bool>();
Stream stream = controller.stream;

class CustomNavBarIcon extends StatefulWidget {
  CustomNavBarIcon(
    this.iconData,
    this.label,
    this.selected,
  );

  final IconData iconData;
  final String label;
  bool selected;

  @override
  _CustomNavBarIconState createState() => _CustomNavBarIconState();

  void toggleColor() {
    print(selected);
    selected = !selected;
    print(selected);
    //controller.add(selected);
    //createState() => _CustomNavBarIconState();
  }
}

class _CustomNavBarIconState extends State<CustomNavBarIcon> {
  @override
  Widget build(BuildContext context) {
    return Icon(
      widget.iconData,
      semanticLabel: widget.label,
      color: widget.selected == true ? selectedColor : unselectedColor,
    );
  }
}

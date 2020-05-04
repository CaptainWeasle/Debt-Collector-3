import 'package:flutter/material.dart';

class TileIcon extends StatelessWidget {
  final Color color;
  final IconData icon;

  const TileIcon({Key key, @required this.color, @required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return Icon(
        icon,
        size: constraint.biggest.height - 3,
        color: color,
      );
    });
  }
}

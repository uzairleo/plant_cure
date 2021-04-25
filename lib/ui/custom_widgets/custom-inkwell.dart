import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomInkWell extends StatelessWidget {
  final Widget child;
  final Function onTap;
  final decoration;

  const CustomInkWell({Key key, this.child, this.onTap, this.decoration})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        child: child,
        onTap: onTap,
      ),
    );
  }
}

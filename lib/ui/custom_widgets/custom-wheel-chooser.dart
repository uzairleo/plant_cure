import 'package:flutter/material.dart';

class CustomWheelChooser extends StatefulWidget {
  final Function(dynamic) onValueChanged;
  final List<String> data;
  final int startingIndex;
  final double height;
  final double width;
  final TextStyle selectTextStyle;
  final TextStyle unSelectTextStyle;

  CustomWheelChooser(
      {@required this.data,
      @required this.onValueChanged,
      this.height,
      this.selectTextStyle,
      this.unSelectTextStyle,
      this.width,
      this.startingIndex});
  @override
  _CustomWheelChooserState createState() => _CustomWheelChooserState();
}

class _CustomWheelChooserState extends State<CustomWheelChooser> {
  FixedExtentScrollController fixedExtentScrollController;
  int currentPosition;
 
  void _listener(int position) {
    setState(() {
      currentPosition = position;
    });
    if (widget.data == null) {
      widget.onValueChanged(currentPosition);
    } else {
      widget.onValueChanged(widget.data[currentPosition]);
    }
  }

  @override
  void initState() {
    super.initState();
    currentPosition = widget.startingIndex;
    fixedExtentScrollController =
        FixedExtentScrollController(initialItem: currentPosition);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: RotatedBox(
        quarterTurns: 0,
        child: ListWheelScrollView(
            onSelectedItemChanged: _listener,
            perspective: 0.01,
            squeeze: 1.0,
            controller: fixedExtentScrollController,
            physics: FixedExtentScrollPhysics(),
            itemExtent: 48.0,
            useMagnifier: true,
            // diameterRatio: 1.6,
            magnification: 1.0,
            children: _buildListItems()),
      ),
    );
  }

  List<Widget> _buildListItems() {
    List<Widget> result = [];
    for (int i = 0; i < widget.data.length; i++) {
      result.add(
        RotatedBox(
          quarterTurns: 0,
          child: Text(
            widget.data[i].toString(),
            textAlign: TextAlign.center,
            textScaleFactor: 1.5,
            style: i == currentPosition
                ? widget.selectTextStyle ?? null
                : widget.unSelectTextStyle ?? null,
          ),
        ),
      );
    }
    return result;
  }
}

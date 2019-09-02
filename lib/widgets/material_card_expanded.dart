import 'package:dashboard_reborn/utils/functions.dart';
import 'package:dashboard_reborn/utils/material_element.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MaterialCardExpanded extends StatefulWidget {
  MaterialCardExpanded({@required this.todoObject, Key key}) : super(key: key);

  final MaterialObject todoObject;

  @override
  _MaterialCardExpandedState createState() => _MaterialCardExpandedState();
}

class _MaterialCardExpandedState extends State<MaterialCardExpanded>
    with TickerProviderStateMixin {
  AnimationController scaleAnimation;

  @override
  void initState() {
    scaleAnimation = AnimationController(
      vsync: this,
      lowerBound: 0.0,
      upperBound: 1.0,
      duration: Duration(milliseconds: 500),
    );

    scaleAnimation.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Hero(
            tag: 'matCardindex',
            child: Container(
              decoration: BoxDecoration(
                color: invertInvertColorsMild(context),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fluttrer_responsive_template/utils/constants.dart';

class HomePage extends StatelessWidget {
  final Widget mobileBody;
  final Widget tabletBody;
  final Widget desktopBody;

  const HomePage({
    Key key,
    @required this.mobileBody,
    this.tabletBody,
    this.desktopBody,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive layout'),
      ),
      body: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < xTabletBreakpoint) {
              return mobileBody;
            } else if (constraints.maxWidth >= xTabletBreakpoint &&
                constraints.maxWidth < xDesktopBreakpoint) {
              return tabletBody ?? mobileBody;
            } else {
              return desktopBody ?? mobileBody;
            }
          },
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

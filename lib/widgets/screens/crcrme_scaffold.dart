import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart' show DragStartBehavior;

// TODO: Add the types in the constructor
// TODO: Const?
// TODO: Add automatically a CRME background image
class CrcrmeScaffold extends Scaffold {
  CrcrmeScaffold({
    Key? key,
    PreferredSizeWidget? appBar,
    Widget? body,
    floatingActionButton,
    floatingActionButtonLocation,
    floatingActionButtonAnimator,
    persistentFooterButtons,
    drawer,
    onDrawerChanged,
    endDrawer,
    onEndDrawerChanged,
    bottomNavigationBar,
    bottomSheet,
    backgroundColor,
    resizeToAvoidBottomInset,
    primary = true,
    drawerDragStartBehavior = DragStartBehavior.start,
    extendBody = false,
    extendBodyBehindAppBar = false,
    drawerScrimColor,
    drawerEdgeDragWidth,
    drawerEnableOpenDragGesture = true,
    endDrawerEnableOpenDragGesture = true,
    restorationId,
  }) : super(
          key: key,
          appBar: appBar,
          body: body != null ? Stack(children: [body]) : null,
          floatingActionButton: floatingActionButton,
          floatingActionButtonLocation: floatingActionButtonLocation,
          floatingActionButtonAnimator: floatingActionButtonAnimator,
          persistentFooterButtons: persistentFooterButtons,
          drawer: drawer,
          onDrawerChanged: onDrawerChanged,
          endDrawer: endDrawer,
          onEndDrawerChanged: onEndDrawerChanged,
          bottomNavigationBar: bottomNavigationBar,
          bottomSheet: bottomSheet,
          backgroundColor: backgroundColor,
          resizeToAvoidBottomInset: resizeToAvoidBottomInset,
          primary: primary,
          drawerDragStartBehavior: drawerDragStartBehavior,
          extendBody: extendBody,
          extendBodyBehindAppBar: extendBodyBehindAppBar,
          drawerScrimColor: drawerScrimColor,
          drawerEdgeDragWidth: drawerEdgeDragWidth,
          drawerEnableOpenDragGesture: drawerEnableOpenDragGesture,
          endDrawerEnableOpenDragGesture: endDrawerEnableOpenDragGesture,
          restorationId: restorationId,
        );
}

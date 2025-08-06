import 'package:flutter/material.dart';

class EFScaffold extends StatelessWidget {
  const EFScaffold({
    required this.body,
    super.key,
    this.resizeToAvoidBottomInset = false,
    this.drawer,
    this.drawerKey,
    this.endDrawer,
    this.backgroundColor,
    this.sliverAppbar,
    this.neverScrollable = false,
  });

  final Widget body;
  final Widget? sliverAppbar;
  final bool resizeToAvoidBottomInset;
  final Widget? drawer;
  final Widget? endDrawer;
  final GlobalKey<ScaffoldState>? drawerKey;
  final Color? backgroundColor;
  final bool neverScrollable;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: drawerKey,
      drawer: drawer,
      endDrawer: endDrawer,
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      backgroundColor:
          backgroundColor ?? Theme.of(context).scaffoldBackgroundColor,
      body: NestedScrollView(
        physics: neverScrollable ? const NeverScrollableScrollPhysics() : null,
        headerSliverBuilder: (context, innerBoxIsScrolled) =>
            [if (sliverAppbar != null) SliverToBoxAdapter(child: sliverAppbar)],
        body: body,
      ),
    );
  }
}

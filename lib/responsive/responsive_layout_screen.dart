import 'package:flutter/material.dart';
import 'package:instagram_flutter/providers/user_provider.dart';
import 'package:instagram_flutter/utils/dimentions.dart';
import 'package:provider/provider.dart';

class ResponsiveLayout extends StatefulWidget {
  final Widget webScrrenLayout;
  final Widget mobileScreenLayout;
  const ResponsiveLayout({
    Key ? key, 
    required this.webScrrenLayout, 
    required this.mobileScreenLayout,
    }) : super(key: key);

  @override
  State<ResponsiveLayout> createState() => _ResponsiveLayoutState();
}

class _ResponsiveLayoutState extends State<ResponsiveLayout> {

  @override
  void initState() {
    super.initState();
    addData();
  }

  addData() async {
    UserProvider _userProvider = Provider.of(context, listen: false);
    await _userProvider.refreshUser();
  }
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
        if(constraints.maxHeight > webScreenSize){
          //web Screen Layout
          return widget.webScrrenLayout;
        }
        //Mobile Screen Layout
        return widget.mobileScreenLayout;
    },
    );
  }
}
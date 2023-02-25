import 'package:flutter/material.dart';
import 'package:instagram_flutter/utils/dimentions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget webScrrenLayout;
  final Widget mobileScreenLayout;
  const ResponsiveLayout({
    Key ? key, 
    required this.webScrrenLayout, 
    required this.mobileScreenLayout,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
        if(constraints.maxHeight > webScreenSize){
          //web Screen Layout
          return webScrrenLayout;
        }
        //Mobile Screen Layout
        return mobileScreenLayout;
    },
    );
  }
}
import 'package:flutter/material.dart';
import 'package:icon_decoration/icon_decoration.dart';
import 'package:stroke_text/stroke_text.dart';

import '../../../core/routing/app_router.dart';
import '../../widgets/bottombar/custom_bottombar.dart';
import '../../widgets/end_drawer/custom_end_drawer.dart';

class DiaryPage extends StatelessWidget {
  final String content;

  const DiaryPage({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 218, 162),
      appBar: AppBar(
        leading: IconButton(
          padding: const EdgeInsets.only(top: 10),
          icon: const DecoratedIcon(icon: Icon(Icons.arrow_back, color: Colors.white,),decoration: IconDecoration(border: IconBorder(width: 2)),),
          onPressed: () => router.pop(),
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        ),
        centerTitle: false,
        title: const Padding(
          padding: EdgeInsets.only(top: 10, left: 15),
            child: StrokeText(
            text: 'Powiedz jak Ci minął dzień?', 
            textStyle: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),
            strokeColor: Colors.black,
          ),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(40)
          ),
          side: BorderSide(color: Colors.black)
        ),
        backgroundColor: const Color.fromARGB(255, 132, 200, 255),
        actions: [
          Builder(
            builder: (context) => IconButton(
              padding: const EdgeInsets.only(top: 10),
              icon: const DecoratedIcon(icon: Icon(Icons.more_horiz, color: Colors.white,),decoration: IconDecoration(border: IconBorder(width: 2)),),
              onPressed: () => Scaffold.of(context).openEndDrawer(),
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, top: 10.0, bottom: 10.0, right: 20.0), 
        child: StrokeText(
          text: content,
          strokeWidth: 1.8,
          textStyle: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      endDrawer: const CustomEndDrawer(),
      bottomNavigationBar: const CustomBottombar(),
    );
  }
}
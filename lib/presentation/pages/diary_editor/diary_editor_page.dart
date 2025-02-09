import 'package:dailyx/core/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:icon_decoration/icon_decoration.dart';
import 'package:stroke_text/stroke_text.dart';

import '../../widgets/bottombar/custom_bottombar.dart';
import '../../widgets/end_drawer/custom_end_drawer.dart';

class DiaryEditorPage extends StatefulWidget {
  const DiaryEditorPage({super.key});

  @override
  State<DiaryEditorPage> createState() => _DiaryEditorPageState();
}

class _DiaryEditorPageState extends State<DiaryEditorPage> {
  final _formKey = GlobalKey<FormState>();

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
        child: _buildContent(context),
      ),
      endDrawer: const CustomEndDrawer(),
      bottomNavigationBar: const CustomBottombar(),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Column(
      children: [
        Form(
          key: _formKey,
          child: Container(
            padding: const EdgeInsets.all(15.0),
            height: 500,
            decoration: BoxDecoration(
              color: Colors.white,
              border: const Border.fromBorderSide(BorderSide()),
              borderRadius: BorderRadius.circular(20.0)
            ),
            child: TextFormField(
              maxLines: 1000,
              cursorColor: Colors.black,
              decoration: const InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide.none
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide.none
                )
              ),
            ),
          )
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 132, 200, 255),
              side: const BorderSide()
            ),
            onPressed: (){}, 
            child: const StrokeText(
              text: 'Zapisz',
              textStyle: TextStyle(
                fontSize: 18
              ),
              strokeWidth: 1.5,
            )
          ),
        )
      ],
    );
  }
}
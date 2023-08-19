
import 'package:flutter/material.dart';

import 'mysektech-model.dart';




class MySketchesWidget extends StatefulWidget {
  const MySketchesWidget({Key? key}) : super(key: key);

  @override
  _MySketchesWidgetState createState() => _MySketchesWidgetState();
}

class _MySketchesWidgetState extends State<MySketchesWidget> {
  late MySketchesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // _model = createModel(context, () => MySketchesModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: Text(
            'My Sketches',
            style:TextStyle(
              fontFamily: 'Montserrat',
              color: Color(0xFF484949),
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
              child: Icon(
                Icons.format_list_bulleted_sharp,
                color: Color(0xFF484949),
                size: 25,
              ),
            ),
          ],
          centerTitle: true,
          elevation: 3,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(5, 10, 10, 0),
            child: GridView(
              padding: EdgeInsets.zero,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                childAspectRatio: 1,
              ),
              scrollDirection: Axis.vertical,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xFF222627),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 25),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.add,
                          color: Color(0xFFB7B8BA),
                          size: 40,
                        ),
                        Text(
                          'Add Your Sketch',
                          style:
                         TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:tattoapp/component/component.dart';
import 'package:tattoapp/features/arEdit-feature/arEdit-model.dart';




class AREditWidget extends StatefulWidget {
  const AREditWidget({Key? key}) : super(key: key);

  @override
  _AREditWidgetState createState() => _AREditWidgetState();
}

class _AREditWidgetState extends State<AREditWidget> {
  late AREditModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // _model = createModel(context, () => AREditModel());
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
          leading: IconButton(

            icon: Icon(
              Icons.arrow_back_rounded,
              color: Color(0xFF484949),
              size: 30,
            ),
            onPressed: () async {
             Navigator.pop(context);
            },
          ),
          title: Text(
            'Edit',
            style: TextStyle(
              fontFamily: 'Montserrat',
              color: Color(0xFF484949),
              fontSize: 22,
            ),
          ),
          actions: [
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                child: Text(
                  'Done',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Color(0xFFDE2C2C),
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
          centerTitle: true,
          elevation: 2,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 100,
                    height: 667,
                    decoration: BoxDecoration(
                      color: Color(0xFF8F8E8E),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: AlignmentDirectional(0, 1),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Text(''),
                      // child:
                      // wrapWithModel(
                      //   model: _model.filtersModel,
                      //   updateCallback: () => setState(() {}),
                      //   child: FiltersWidget(),
                      // ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

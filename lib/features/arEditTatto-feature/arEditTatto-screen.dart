

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tattoapp/component/component.dart';
import 'package:tattoapp/features/arEditTatto-feature/model.dart';

class AREditTattooWidget extends StatefulWidget {
  const AREditTattooWidget({Key? key}) : super(key: key);

  @override
  _AREditTattooWidgetState createState() => _AREditTattooWidgetState();
}

class _AREditTattooWidgetState extends State<AREditTattooWidget> {
  late AREditTattooModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // _model = createModel(context, () => AREditTattooModel());
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
                    height: 567,
                    decoration: BoxDecoration(
                      color: Color(0xFF8F8E8E),
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color:
                        Colors.transparent,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5,
                              color: Color(0x33000000),
                              offset: Offset(0, 0),
                            )
                          ],
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              'https://firebasestorage.googleapis.com/v0/b/aitattoo-e4617.appspot.com/o/pngwing.com%20(25).png?alt=media&token=c5b737b1-cf1d-4bda-9342-5d00e43b454d',
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color:
                          Colors.transparent,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5,
                              color: Color(0x33000000),
                              offset: Offset(0, 0),
                            )
                          ],
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              'https://firebasestorage.googleapis.com/v0/b/aitattoo-e4617.appspot.com/o/pngwing.com%20(25).png?alt=media&token=c5b737b1-cf1d-4bda-9342-5d00e43b454d',
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color:
                        Colors.transparent,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5,
                              color: Color(0x33000000),
                              offset: Offset(0, 0),
                            )
                          ],
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              'https://firebasestorage.googleapis.com/v0/b/aitattoo-e4617.appspot.com/o/pngwing.com%20(25).png?alt=media&token=c5b737b1-cf1d-4bda-9342-5d00e43b454d',
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color:
                        Colors.transparent,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5,
                              color: Color(0x33000000),
                              offset: Offset(0, 0),
                            )
                          ],
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              'https://firebasestorage.googleapis.com/v0/b/aitattoo-e4617.appspot.com/o/pngwing.com%20(25).png?alt=media&token=c5b737b1-cf1d-4bda-9342-5d00e43b454d',
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 1),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Text(''),
                      // child:
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

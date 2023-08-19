

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tattoapp/features/ark-feature/ark-screen.dart';
import 'package:tattoapp/features/profile-feature/profile-screen.dart';

import 'home-model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // _model = createModel(context, () => HomePageModel());
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
          leading: Align(
            alignment: AlignmentDirectional(0, 0),
            child: Container(
              width: 40,
              height: 40,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.network(
                'https://picsum.photos/seed/0/600',
                fit: BoxFit.cover,
              ),
            ),
          ),
          title: Text(
            'AI TATTOO ARTIST',
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
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  Navigator.push(context, MaterialPageRoute(builder: (context){

                    return ProfileWidget();
                  }));
                },
                child: Icon(
                  Icons.format_list_bulleted_sharp,
                  color: Color(0xFF484949),
                  size: 25,
                ),
              ),
            ),
          ],
          centerTitle: true,
          elevation: 3,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 0),
            child: StreamBuilder<List<dynamic>>(
              stream: queryTattoosRecord(),
              builder: (context, snapshot) {
                // Customize what your widget looks like when it's loading.
                if (!snapshot.hasData) {
                  return Center(
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(
                          Colors.grey,
                        ),
                      ),
                    ),
                  );
                }
                List<dynamic> gridViewTattoosRecordList = snapshot.data!;
                return GridView.builder(
                  padding: EdgeInsets.zero,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    childAspectRatio: 1,
                  ),
                  scrollDirection: Axis.vertical,
                  itemCount: gridViewTattoosRecordList.length,
                  itemBuilder: (context, gridViewIndex) {
                    final gridViewTattoosRecord =
                    gridViewTattoosRecordList[gridViewIndex];
                    return InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return ARKitPageWidget();
                        }));
                      },
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color(0xFFECECEC),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              gridViewTattoosRecord.image,
                              width: 150,
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  queryTattoosRecord() {}
}

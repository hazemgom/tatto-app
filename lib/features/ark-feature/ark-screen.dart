
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tattoapp/features/ark-feature/ark-model.dart';




class ARKitPageWidget extends StatefulWidget {
  const ARKitPageWidget({Key? key}) : super(key: key);

  @override
  _ARKitPageWidgetState createState() => _ARKitPageWidgetState();
}

class _ARKitPageWidgetState extends State<ARKitPageWidget> {
  late ARKitPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // _model = createModel(context, () => ARKitPageModel());
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
          leading:IconButton(

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
            'Get Tattooed',
            style:TextStyle(
              fontFamily: 'Montserrat',
              color: Color(0xFF484949),
              fontSize: 22,
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 15, 10, 0),
              child: FaIcon(
                FontAwesomeIcons.sync,
                color: Color(0x9F8F8E8E),
                size: 28,
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
                      child: Container(
                        width: 100,
                        height: 120,
                        decoration: BoxDecoration(
                          color:
                         Colors.green,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color(0x33000000),
                              offset: Offset(0, -2),
                            )
                          ],
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: 100,
                                height: 39,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xFFB7B8BA),
                                  ),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Text(
                                    'Photos',
                                    style:TextStyle(
                                      fontFamily: 'Montserrat',
                                      color: Color(0xFF484949),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                // onTap: () async {
                                //   // final selectedMedia = await selectMedia(
                                //   //   multiImage: false,
                                //   // );
                                //   if (selectedMedia != null &&
                                //       selectedMedia.every((m) =>
                                //           validateFileFormat(
                                //               m.storagePath, context))) {
                                //     setState(
                                //             () => _model.isDataUploading = true);
                                //     // var selectedUploadedFiles =
                                //     // <FFUploadedFile>[];
                                //
                                //     List downloadUrls = <String>[];
                                //     try {
                                //       selectedUploadedFiles = selectedMedia
                                //           .map((m) => FFUploadedFile(
                                //         name: m.storagePath
                                //             .split('/')
                                //             .last,
                                //         bytes: m.bytes,
                                //         height: m.dimensions?.height,
                                //         width: m.dimensions?.width,
                                //         blurHash: m.blurHash,
                                //       ))
                                //           .toList();
                                //
                                //       downloadUrls = (await Future.wait(
                                //         selectedMedia.map(
                                //               (m) async => await (
                                //               m.storagePath, m.bytes),
                                //         ),
                                //       ))
                                //           .where((u) => u != null)
                                //           .map((u) => u!)
                                //           .toList();
                                //     } finally {
                                //       _model.isDataUploading = false;
                                //     }
                                //     if (selectedUploadedFiles.length ==
                                //         selectedMedia.length &&
                                //         downloadUrls.length ==
                                //             selectedMedia.length) {
                                //       setState(() {
                                //         // _model.uploadedLocalFile =
                                //         //     selectedUploadedFiles.first;
                                //         // _model.uploadedFileUrl =
                                //         //     downloadUrls.first;
                                //       });
                                //     } else {
                                //       setState(() {});
                                //       return;
                                //     }
                                //   }
                                // },
                                child: Container(
                                  width: 70,
                                  height: 70,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFDE2C2C),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Container(
                                      width: 40,
                                      height: 36,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: Image.asset(
                                            'assets/images/clarity_camera-line_(1).png',
                                          ).image,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 100,
                                height: 39,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xFFB7B8BA),
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      7.5, 0, 3.5, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Align(
                                        alignment: AlignmentDirectional(0, 0),
                                        child: Text(
                                          '3D',
                                          style:TextStyle(
                                            fontFamily: 'Montserrat',
                                            color: Color(0xFF484949),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 50,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF222627),
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

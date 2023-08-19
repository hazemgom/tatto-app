//
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//
// import 'auth-model.dart';
//
//
//
//
// class AuthenticationWidget extends StatefulWidget {
//   const AuthenticationWidget({Key? key}) : super(key: key);
//
//   @override
//   _AuthenticationWidgetState createState() => _AuthenticationWidgetState();
// }
//
// class _AuthenticationWidgetState extends State<AuthenticationWidget> {
//   late AuthenticationModel _model;
//
//   final scaffoldKey = GlobalKey<ScaffoldState>();
//
//   @override
//   void initState() {
//     super.initState();
//     // _model = createModel(context, () => AuthenticationModel());
//
//     _model.nameController1 ??= TextEditingController();
//     _model.emailController1 ??= TextEditingController();
//     _model.passwordController1 ??= TextEditingController();
//     _model.cPasswordController ??= TextEditingController();
//     _model.nameController2 ??= TextEditingController();
//     _model.emailController2 ??= TextEditingController();
//     _model.passwordController2 ??= TextEditingController();
//   }
//
//   @override
//   void dispose() {
//     _model.dispose();
//
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
//       child: Scaffold(
//         key: scaffoldKey,
//         backgroundColor:Colors.grey,
//         body: SafeArea(
//           top: true,
//           child: Column(
//             mainAxisSize: MainAxisSize.max,
//             children: [
//               Expanded(
//                 child: Container(
//                   width: double.infinity,
//                   height: 100,
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                       fit: BoxFit.cover,
//                       image: Image.asset(
//                         'assets/images/Authentication.png',
//                       ).image,
//                     ),
//                   ),
//                   child: Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
//                     child: Column(
//                       mainAxisSize: MainAxisSize.max,
//                       children: [
//                         Padding(
//                           padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
//                           child: ClipRRect(
//                             borderRadius: BorderRadius.circular(8),
//                             child: Image.asset(
//                               'assets/images/AI_Tattoo_Logo.png',
//                               width: 75,
//                               height: 50,
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                         Row(
//                           mainAxisSize: MainAxisSize.max,
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text(
//                               'AI TATTOO ARTIST',
//                               style:TextStyle(
//                                 fontFamily: 'Montserrat',
//                                 color: Colors.white,
//                                 fontSize: 18,
//                               ),
//                             ),
//                           ],
//                         ),
//                         Expanded(
//                           child: Padding(
//                             padding:
//                             EdgeInsetsDirectional.fromSTEB(10, 30, 10, 0),
//                             child: DefaultTabController(
//                               length: 2,
//                               initialIndex: 0,
//                               child: Column(
//                                 children: [
//                                   Align(
//                                     alignment: Alignment(0, 0),
//                                     child: TabBar(
//                                       labelColor: Colors.green,
//                                       unselectedLabelColor:
//                                       Colors.red,
//                                       labelStyle: TextStyle(
//                                         fontFamily: 'Montserrat',
//                                       ),
//                                       indicatorColor: Color(0xFFDE2C2C),
//                                       tabs: [
//                                         Tab(
//                                           text: 'SIGN UP',
//                                         ),
//                                         Tab(
//                                           text: 'SIGN IN',
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                   Expanded(
//                                     child: TabBarView(
//                                       children: [
//                                         Padding(
//                                           padding:
//                                           EdgeInsetsDirectional.fromSTEB(
//                                               0, 30, 0, 0),
//                                           child: Column(
//                                             mainAxisSize: MainAxisSize.max,
//                                             children: [
//                                               Padding(
//                                                 padding: EdgeInsetsDirectional
//                                                     .fromSTEB(0, 0, 0, 20),
//                                                 child: Row(
//                                                   mainAxisSize:
//                                                   MainAxisSize.max,
//                                                   mainAxisAlignment:
//                                                   MainAxisAlignment.center,
//                                                   children: [
//                                                     InkWell(
//                                                       splashColor:
//                                                       Colors.transparent,
//                                                       focusColor:
//                                                       Colors.transparent,
//                                                       hoverColor:
//                                                       Colors.transparent,
//                                                       highlightColor:
//                                                       Colors.transparent,
//                                                       // onTap: () async {
//                                                       //   final selectedMedia =
//                                                       //   await selectMediaWithSourceBottomSheet(
//                                                       //     context: context,
//                                                       //     maxWidth: 200.00,
//                                                       //     maxHeight: 200.00,
//                                                       //     imageQuality: 75,
//                                                       //     allowPhoto: true,
//                                                       //   );
//                                                       //   if (selectedMedia !=
//                                                       //       null &&
//                                                       //       selectedMedia.every((m) =>
//                                                       //           validateFileFormat(
//                                                       //               m.storagePath,
//                                                       //               context))) {
//                                                       //     setState(() => _model
//                                                       //         .isDataUploading =
//                                                       //     true);
//                                                       //     var selectedUploadedFiles =
//                                                       //     <FFUploadedFile>[];
//                                                       //
//                                                       //     var downloadUrls =
//                                                       //     <String>[];
//                                                       //     try {
//                                                       //       selectedUploadedFiles =
//                                                       //           selectedMedia
//                                                       //               .map((m) =>
//                                                       //               FFUploadedFile(
//                                                       //                 name: m
//                                                       //                     .storagePath
//                                                       //                     .split('/')
//                                                       //                     .last,
//                                                       //                 bytes:
//                                                       //                 m.bytes,
//                                                       //                 height: m
//                                                       //                     .dimensions
//                                                       //                     ?.height,
//                                                       //                 width: m
//                                                       //                     .dimensions
//                                                       //                     ?.width,
//                                                       //                 blurHash:
//                                                       //                 m.blurHash,
//                                                       //               ))
//                                                       //               .toList();
//                                                       //
//                                                       //       downloadUrls =
//                                                       //           (await Future
//                                                       //               .wait(
//                                                       //             selectedMedia.map(
//                                                       //                   (m) async =>
//                                                       //               await uploadData(
//                                                       //                   m.storagePath,
//                                                       //                   m.bytes),
//                                                       //             ),
//                                                       //           ))
//                                                       //               .where((u) =>
//                                                       //           u !=
//                                                       //               null)
//                                                       //               .map((u) =>
//                                                       //           u!)
//                                                       //               .toList();
//                                                       //     } finally {
//                                                       //       _model.isDataUploading =
//                                                       //       false;
//                                                       //     }
//                                                       //     if (selectedUploadedFiles
//                                                       //         .length ==
//                                                       //         selectedMedia
//                                                       //             .length &&
//                                                       //         downloadUrls
//                                                       //             .length ==
//                                                       //             selectedMedia
//                                                       //                 .length) {
//                                                       //       setState(() {
//                                                       //         _model.uploadedLocalFile =
//                                                       //             selectedUploadedFiles
//                                                       //                 .first;
//                                                       //         _model.uploadedFileUrl =
//                                                       //             downloadUrls
//                                                       //                 .first;
//                                                       //       });
//                                                       //     } else {
//                                                       //       setState(() {});
//                                                       //       return;
//                                                       //     }
//                                                       //   }
//                                                       // },
//                                                       child: Container(
//                                                         width: 100,
//                                                         height: 100,
//                                                         decoration:
//                                                         BoxDecoration(
//                                                           color:
//                                                           Color(0xFF484949),
//                                                           boxShadow: [
//                                                             BoxShadow(
//                                                               blurRadius: 10,
//                                                               color: Color(
//                                                                   0x9F8F8E8E),
//                                                               offset:
//                                                               Offset(4, 4),
//                                                             )
//                                                           ],
//                                                           shape:
//                                                           BoxShape.circle,
//                                                           border: Border.all(
//                                                             color: Color(
//                                                                 0x9F8F8E8E),
//                                                             width: 3,
//                                                           ),
//                                                         ),
//                                                         child: Align(
//                                                           alignment:
//                                                           AlignmentDirectional(
//                                                               0, 0),
//                                                           child: FaIcon(
//                                                             FontAwesomeIcons
//                                                                 .user,
//                                                             color: Color(
//                                                                 0xFFB7B8BA),
//                                                             size: 50,
//                                                           ),
//                                                         ),
//                                                       ),
//                                                     ),
//                                                   ],
//                                                 ),
//                                               ),
//                                               Padding(
//                                                 padding: EdgeInsetsDirectional
//                                                     .fromSTEB(0, 0, 0, 20),
//                                                 child: Row(
//                                                   mainAxisSize:
//                                                   MainAxisSize.max,
//                                                   children: [
//                                                     Expanded(
//                                                       child: Container(
//                                                         width: 100,
//                                                         height: 55,
//                                                         decoration:
//                                                         BoxDecoration(
//                                                           border: Border.all(
//                                                             color: Color(
//                                                                 0xFFB7B8BA),
//                                                           ),
//                                                         ),
//                                                         child: Padding(
//                                                           padding:
//                                                           EdgeInsetsDirectional
//                                                               .fromSTEB(5,
//                                                               0, 5, 0),
//                                                           child: Row(
//                                                             mainAxisSize:
//                                                             MainAxisSize
//                                                                 .max,
//                                                             children: [
//                                                               Padding(
//                                                                 padding:
//                                                                 EdgeInsetsDirectional
//                                                                     .fromSTEB(
//                                                                     0,
//                                                                     0,
//                                                                     10,
//                                                                     0),
//                                                                 child:
//                                                                 Container(
//                                                                   width: 30,
//                                                                   height: 30,
//                                                                   decoration:
//                                                                   BoxDecoration(
//                                                                     image:
//                                                                     DecorationImage(
//                                                                       fit: BoxFit
//                                                                           .cover,
//                                                                       image: Image
//                                                                           .asset(
//                                                                         'assets/images/solar_user-line-duotone.png',
//                                                                       ).image,
//                                                                     ),
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                               Expanded(
//                                                                 child: Padding(
//                                                                   padding: EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                       8,
//                                                                       0,
//                                                                       8,
//                                                                       0),
//                                                                   child:
//                                                                   TextFormField(
//                                                                     controller:
//                                                                     _model
//                                                                         .nameController1,
//                                                                     autofocus:
//                                                                     true,
//                                                                     obscureText:
//                                                                     false,
//                                                                     decoration:
//                                                                     InputDecoration(
//                                                                       labelText:
//                                                                       'Name',
//                                                                       labelStyle: TextStyle(
//                                                                         fontFamily:
//                                                                         'Readex Pro',
//                                                                         color:
//                                                                         Color(0xFFB7B8BA),
//                                                                       ),
//                                                                       hintText:
//                                                                       'Your name',
//
//                                                                       focusedBorder:
//                                                                       InputBorder
//                                                                           .none,
//                                                                       errorBorder:
//                                                                       InputBorder
//                                                                           .none,
//                                                                       focusedErrorBorder:
//                                                                       InputBorder
//                                                                           .none,
//                                                                     ),
//                                                                     style:TextStyle(
//                                                                       fontFamily:
//                                                                       'Readex Pro',
//                                                                       color:
//                                                                       Colors.white,
//                                                                     ),
//
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                             ],
//                                                           ),
//                                                         ),
//                                                       ),
//                                                     ),
//                                                   ],
//                                                 ),
//                                               ),
//                                               Padding(
//                                                 padding: EdgeInsetsDirectional
//                                                     .fromSTEB(0, 0, 0, 20),
//                                                 child: Row(
//                                                   mainAxisSize:
//                                                   MainAxisSize.max,
//                                                   children: [
//                                                     Expanded(
//                                                       child: Container(
//                                                         width: 100,
//                                                         height: 55,
//                                                         decoration:
//                                                         BoxDecoration(
//                                                           border: Border.all(
//                                                             color: Color(
//                                                                 0xFFB7B8BA),
//                                                           ),
//                                                         ),
//                                                         child: Padding(
//                                                           padding:
//                                                           EdgeInsetsDirectional
//                                                               .fromSTEB(5,
//                                                               0, 5, 0),
//                                                           child: Row(
//                                                             mainAxisSize:
//                                                             MainAxisSize
//                                                                 .max,
//                                                             children: [
//                                                               Padding(
//                                                                 padding:
//                                                                 EdgeInsetsDirectional
//                                                                     .fromSTEB(
//                                                                     0,
//                                                                     0,
//                                                                     10,
//                                                                     0),
//                                                                 child:
//                                                                 Container(
//                                                                   width: 30,
//                                                                   height: 30,
//                                                                   decoration:
//                                                                   BoxDecoration(
//                                                                     image:
//                                                                     DecorationImage(
//                                                                       fit: BoxFit
//                                                                           .cover,
//                                                                       image: Image
//                                                                           .asset(
//                                                                         'assets/images/fluent_mail-28-regular.png',
//                                                                       ).image,
//                                                                     ),
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                               Expanded(
//                                                                 child: Padding(
//                                                                   padding: EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                       8,
//                                                                       0,
//                                                                       8,
//                                                                       0),
//                                                                   child:
//                                                                   TextFormField(
//                                                                     controller:
//                                                                     _model
//                                                                         .emailController1,
//                                                                     autofocus:
//                                                                     true,
//                                                                     autofillHints: [
//                                                                       AutofillHints
//                                                                           .email
//                                                                     ],
//                                                                     obscureText:
//                                                                     false,
//                                                                     decoration:
//                                                                     InputDecoration(
//                                                                       labelText:
//                                                                       'Email',
//                                                                       labelStyle:TextStyle(
//                                                                         fontFamily:
//                                                                         'Readex Pro',
//                                                                         color:
//                                                                         Color(0xFFB7B8BA),
//                                                                       ),
//                                                                       hintText:
//                                                                       'Your email',
//
//                                                                       enabledBorder:
//                                                                       InputBorder
//                                                                           .none,
//                                                                       focusedBorder:
//                                                                       InputBorder
//                                                                           .none,
//                                                                       errorBorder:
//                                                                       InputBorder
//                                                                           .none,
//                                                                       focusedErrorBorder:
//                                                                       InputBorder
//                                                                           .none,
//                                                                     ),
//                                                                     style: TextStyle(
//                                                                       fontFamily:
//                                                                       'Readex Pro',
//                                                                       color:
//                                                                       Colors.white,
//                                                                     ),
//
//
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                             ],
//                                                           ),
//                                                         ),
//                                                       ),
//                                                     ),
//                                                   ],
//                                                 ),
//                                               ),
//                                               Padding(
//                                                 padding: EdgeInsetsDirectional
//                                                     .fromSTEB(0, 0, 0, 20),
//                                                 child: Row(
//                                                   mainAxisSize:
//                                                   MainAxisSize.max,
//                                                   children: [
//                                                     Expanded(
//                                                       child: Container(
//                                                         width: 100,
//                                                         height: 55,
//                                                         decoration:
//                                                         BoxDecoration(
//                                                           border: Border.all(
//                                                             color: Color(
//                                                                 0xFFB7B8BA),
//                                                           ),
//                                                         ),
//                                                         child: Padding(
//                                                           padding:
//                                                           EdgeInsetsDirectional
//                                                               .fromSTEB(5,
//                                                               0, 5, 0),
//                                                           child: Row(
//                                                             mainAxisSize:
//                                                             MainAxisSize
//                                                                 .max,
//                                                             children: [
//                                                               Padding(
//                                                                 padding:
//                                                                 EdgeInsetsDirectional
//                                                                     .fromSTEB(
//                                                                     0,
//                                                                     0,
//                                                                     10,
//                                                                     0),
//                                                                 child:
//                                                                 Container(
//                                                                   width: 30,
//                                                                   height: 30,
//                                                                   decoration:
//                                                                   BoxDecoration(
//                                                                     image:
//                                                                     DecorationImage(
//                                                                       fit: BoxFit
//                                                                           .cover,
//                                                                       image: Image
//                                                                           .asset(
//                                                                         'assets/images/iconamoon_lock-thin.png',
//                                                                       ).image,
//                                                                     ),
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                               Expanded(
//                                                                 child: Padding(
//                                                                   padding: EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                       8,
//                                                                       0,
//                                                                       8,
//                                                                       0),
//                                                                   child:
//                                                                   TextFormField(
//                                                                     controller:
//                                                                     _model
//                                                                         .passwordController1,
//                                                                     autofocus:
//                                                                     true,
//                                                                     obscureText:
//                                                                     !_model
//                                                                         .passwordVisibility1,
//                                                                     decoration:
//                                                                     InputDecoration(
//                                                                       labelText:
//                                                                       'Password',
//                                                                       labelStyle:TextStyle(
//                                                                         fontFamily:
//                                                                         'Readex Pro',
//                                                                         color:
//                                                                         Color(0xFFB7B8BA),
//                                                                       ),
//                                                                       hintText:
//                                                                       'Input password',
//
//                                                                       enabledBorder:
//                                                                       InputBorder
//                                                                           .none,
//                                                                       focusedBorder:
//                                                                       InputBorder
//                                                                           .none,
//                                                                       errorBorder:
//                                                                       InputBorder
//                                                                           .none,
//                                                                       focusedErrorBorder:
//                                                                       InputBorder
//                                                                           .none,
//                                                                       suffixIcon:
//                                                                       InkWell(
//                                                                         onTap: () =>
//                                                                             setState(
//                                                                                   () => _model.passwordVisibility1 =
//                                                                               !_model.passwordVisibility1,
//                                                                             ),
//                                                                         focusNode:
//                                                                         FocusNode(skipTraversal: true),
//                                                                         child:
//                                                                         Icon(
//                                                                           _model.passwordVisibility1
//                                                                               ? Icons.visibility_outlined
//                                                                               : Icons.visibility_off_outlined,
//                                                                           color:
//                                                                           Color(0xFF484949),
//                                                                           size:
//                                                                           22,
//                                                                         ),
//                                                                       ),
//                                                                     ),
//                                                                     style: TextStyle(
//                                                                       fontFamily:
//                                                                       'Readex Pro',
//                                                                       color:
//                                                                       Colors.white,
//                                                                     ),
//                                                                     validator: _model
//                                                                         .passwordController1Validator
//                                                                         .asValidator(
//                                                                         context),
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                             ],
//                                                           ),
//                                                         ),
//                                                       ),
//                                                     ),
//                                                   ],
//                                                 ),
//                                               ),
//                                               Padding(
//                                                 padding: EdgeInsetsDirectional
//                                                     .fromSTEB(0, 0, 0, 20),
//                                                 child: Row(
//                                                   mainAxisSize:
//                                                   MainAxisSize.max,
//                                                   children: [
//                                                     Expanded(
//                                                       child: Container(
//                                                         width: 100,
//                                                         height: 55,
//                                                         decoration:
//                                                         BoxDecoration(
//                                                           border: Border.all(
//                                                             color: Color(
//                                                                 0xFFB7B8BA),
//                                                           ),
//                                                         ),
//                                                         child: Padding(
//                                                           padding:
//                                                           EdgeInsetsDirectional
//                                                               .fromSTEB(5,
//                                                               0, 5, 0),
//                                                           child: Row(
//                                                             mainAxisSize:
//                                                             MainAxisSize
//                                                                 .max,
//                                                             children: [
//                                                               Padding(
//                                                                 padding:
//                                                                 EdgeInsetsDirectional
//                                                                     .fromSTEB(
//                                                                     0,
//                                                                     0,
//                                                                     10,
//                                                                     0),
//                                                                 child:
//                                                                 Container(
//                                                                   width: 30,
//                                                                   height: 30,
//                                                                   decoration:
//                                                                   BoxDecoration(
//                                                                     image:
//                                                                     DecorationImage(
//                                                                       fit: BoxFit
//                                                                           .cover,
//                                                                       image: Image
//                                                                           .asset(
//                                                                         'assets/images/iconamoon_lock-thin.png',
//                                                                       ).image,
//                                                                     ),
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                               Expanded(
//                                                                 child: Padding(
//                                                                   padding: EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                       8,
//                                                                       0,
//                                                                       8,
//                                                                       0),
//                                                                   child:
//                                                                   TextFormField(
//                                                                     controller:
//                                                                     _model
//                                                                         .cPasswordController,
//                                                                     autofocus:
//                                                                     true,
//                                                                     obscureText:
//                                                                     !_model
//                                                                         .cPasswordVisibility,
//                                                                     decoration:
//                                                                     InputDecoration(
//                                                                       labelText:
//                                                                       'Password',
//                                                                       labelStyle: FlutterFlowTheme.of(
//                                                                           context)
//                                                                           .labelMedium
//                                                                           .override(
//                                                                         fontFamily:
//                                                                         'Readex Pro',
//                                                                         color:
//                                                                         Color(0xFFB7B8BA),
//                                                                       ),
//                                                                       hintText:
//                                                                       'Input password',
//                                                                       hintStyle:
//                                                                       FlutterFlowTheme.of(context)
//                                                                           .labelMedium,
//                                                                       enabledBorder:
//                                                                       InputBorder
//                                                                           .none,
//                                                                       focusedBorder:
//                                                                       InputBorder
//                                                                           .none,
//                                                                       errorBorder:
//                                                                       InputBorder
//                                                                           .none,
//                                                                       focusedErrorBorder:
//                                                                       InputBorder
//                                                                           .none,
//                                                                       suffixIcon:
//                                                                       InkWell(
//                                                                         onTap: () =>
//                                                                             setState(
//                                                                                   () => _model.cPasswordVisibility =
//                                                                               !_model.cPasswordVisibility,
//                                                                             ),
//                                                                         focusNode:
//                                                                         FocusNode(skipTraversal: true),
//                                                                         child:
//                                                                         Icon(
//                                                                           _model.cPasswordVisibility
//                                                                               ? Icons.visibility_outlined
//                                                                               : Icons.visibility_off_outlined,
//                                                                           color:
//                                                                           Color(0xFF484949),
//                                                                           size:
//                                                                           22,
//                                                                         ),
//                                                                       ),
//                                                                     ),
//                                                                     style: FlutterFlowTheme.of(
//                                                                         context)
//                                                                         .bodyMedium
//                                                                         .override(
//                                                                       fontFamily:
//                                                                       'Readex Pro',
//                                                                       color:
//                                                                       Colors.white,
//                                                                     ),
//                                                                     validator: _model
//                                                                         .cPasswordControllerValidator
//                                                                         .asValidator(
//                                                                         context),
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                             ],
//                                                           ),
//                                                         ),
//                                                       ),
//                                                     ),
//                                                   ],
//                                                 ),
//                                               ),
//                                               Padding(
//                                                 padding: EdgeInsetsDirectional
//                                                     .fromSTEB(0, 0, 0, 20),
//                                                 child: Row(
//                                                   mainAxisSize:
//                                                   MainAxisSize.max,
//                                                   mainAxisAlignment:
//                                                   MainAxisAlignment.center,
//                                                   children: [
//                                                     Expanded(
//                                                       child: FFButtonWidget(
//                                                         onPressed: () async {
//                                                           GoRouter.of(context)
//                                                               .prepareAuthEvent();
//                                                           if (_model
//                                                               .passwordController1
//                                                               .text !=
//                                                               _model
//                                                                   .cPasswordController
//                                                                   .text) {
//                                                             ScaffoldMessenger
//                                                                 .of(context)
//                                                                 .showSnackBar(
//                                                               SnackBar(
//                                                                 content: Text(
//                                                                   'Passwords don\'t match!',
//                                                                 ),
//                                                               ),
//                                                             );
//                                                             return;
//                                                           }
//
//                                                           final user =
//                                                           await authManager
//                                                               .createAccountWithEmail(
//                                                             context,
//                                                             _model
//                                                                 .emailController1!
//                                                                 .text,
//                                                             _model
//                                                                 .passwordController1!
//                                                                 .text,
//                                                           );
//                                                           if (user == null) {
//                                                             return;
//                                                           }
//
//                                                           await UsersRecord
//                                                               .collection
//                                                               .doc(user.uid)
//                                                               .update(
//                                                               createUsersRecordData(
//                                                                 displayName: '',
//                                                                 email: '',
//                                                                 photoUrl: '',
//                                                                 uid: '',
//                                                               ));
//
//                                                           context.pushNamedAuth(
//                                                               'HomePage',
//                                                               context.mounted);
//                                                         },
//                                                         text: 'SUBMIT',
//                                                         options:
//                                                         FFButtonOptions(
//                                                           height: 55,
//                                                           padding:
//                                                           EdgeInsetsDirectional
//                                                               .fromSTEB(24,
//                                                               0, 24, 0),
//                                                           iconPadding:
//                                                           EdgeInsetsDirectional
//                                                               .fromSTEB(0,
//                                                               0, 0, 0),
//                                                           color:
//                                                           Color(0xFFDE2C2C),
//                                                           textStyle:
//                                                           FlutterFlowTheme.of(
//                                                               context)
//                                                               .titleSmall
//                                                               .override(
//                                                             fontFamily:
//                                                             'Montserrat',
//                                                             color: Colors
//                                                                 .white,
//                                                             fontSize:
//                                                             18,
//                                                           ),
//                                                           elevation: 3,
//                                                           borderSide:
//                                                           BorderSide(
//                                                             color: Colors
//                                                                 .transparent,
//                                                             width: 1,
//                                                           ),
//                                                           borderRadius:
//                                                           BorderRadius
//                                                               .circular(0),
//                                                         ),
//                                                       ),
//                                                     ),
//                                                   ],
//                                                 ),
//                                               ),
//                                               Padding(
//                                                 padding: EdgeInsetsDirectional
//                                                     .fromSTEB(0, 0, 0, 20),
//                                                 child: Row(
//                                                   mainAxisSize:
//                                                   MainAxisSize.max,
//                                                   mainAxisAlignment:
//                                                   MainAxisAlignment.start,
//                                                   children: [
//                                                     Text(
//                                                       'Aready have an Account?',
//                                                       style:
//                                                       FlutterFlowTheme.of(
//                                                           context)
//                                                           .bodyMedium
//                                                           .override(
//                                                         fontFamily:
//                                                         'Montserrat',
//                                                       ),
//                                                     ),
//                                                     Padding(
//                                                       padding:
//                                                       EdgeInsetsDirectional
//                                                           .fromSTEB(
//                                                           5, 0, 0, 0),
//                                                       child: Text(
//                                                         'Sign In',
//                                                         style:
//                                                         FlutterFlowTheme.of(
//                                                             context)
//                                                             .bodyMedium
//                                                             .override(
//                                                           fontFamily:
//                                                           'Montserrat',
//                                                           color: Color(
//                                                               0xFFDE2C2C),
//                                                         ),
//                                                       ),
//                                                     ),
//                                                   ],
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                         Padding(
//                                           padding:
//                                           EdgeInsetsDirectional.fromSTEB(
//                                               0, 30, 0, 0),
//                                           child: Column(
//                                             mainAxisSize: MainAxisSize.max,
//                                             children: [
//                                               Padding(
//                                                 padding: EdgeInsetsDirectional
//                                                     .fromSTEB(0, 0, 0, 20),
//                                                 child: Row(
//                                                   mainAxisSize:
//                                                   MainAxisSize.max,
//                                                   children: [
//                                                     Expanded(
//                                                       child: Container(
//                                                         width: 100,
//                                                         height: 55,
//                                                         decoration:
//                                                         BoxDecoration(
//                                                           border: Border.all(
//                                                             color: Color(
//                                                                 0xFFB7B8BA),
//                                                           ),
//                                                         ),
//                                                         child: Padding(
//                                                           padding:
//                                                           EdgeInsetsDirectional
//                                                               .fromSTEB(5,
//                                                               0, 5, 0),
//                                                           child: Row(
//                                                             mainAxisSize:
//                                                             MainAxisSize
//                                                                 .max,
//                                                             children: [
//                                                               Padding(
//                                                                 padding:
//                                                                 EdgeInsetsDirectional
//                                                                     .fromSTEB(
//                                                                     0,
//                                                                     0,
//                                                                     10,
//                                                                     0),
//                                                                 child:
//                                                                 Container(
//                                                                   width: 30,
//                                                                   height: 30,
//                                                                   decoration:
//                                                                   BoxDecoration(
//                                                                     image:
//                                                                     DecorationImage(
//                                                                       fit: BoxFit
//                                                                           .cover,
//                                                                       image: Image
//                                                                           .asset(
//                                                                         'assets/images/solar_user-line-duotone.png',
//                                                                       ).image,
//                                                                     ),
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                               Expanded(
//                                                                 child: Padding(
//                                                                   padding: EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                       8,
//                                                                       0,
//                                                                       8,
//                                                                       0),
//                                                                   child:
//                                                                   TextFormField(
//                                                                     controller:
//                                                                     _model
//                                                                         .nameController2,
//                                                                     autofocus:
//                                                                     true,
//                                                                     obscureText:
//                                                                     false,
//                                                                     decoration:
//                                                                     InputDecoration(
//                                                                       labelText:
//                                                                       'Name',
//                                                                       labelStyle: FlutterFlowTheme.of(
//                                                                           context)
//                                                                           .labelMedium
//                                                                           .override(
//                                                                         fontFamily:
//                                                                         'Readex Pro',
//                                                                         color:
//                                                                         Color(0xFFB7B8BA),
//                                                                       ),
//                                                                       hintText:
//                                                                       'Your name',
//                                                                       hintStyle:
//                                                                       FlutterFlowTheme.of(context)
//                                                                           .labelMedium,
//                                                                       enabledBorder:
//                                                                       InputBorder
//                                                                           .none,
//                                                                       focusedBorder:
//                                                                       InputBorder
//                                                                           .none,
//                                                                       errorBorder:
//                                                                       InputBorder
//                                                                           .none,
//                                                                       focusedErrorBorder:
//                                                                       InputBorder
//                                                                           .none,
//                                                                     ),
//                                                                     style: FlutterFlowTheme.of(
//                                                                         context)
//                                                                         .bodyMedium
//                                                                         .override(
//                                                                       fontFamily:
//                                                                       'Readex Pro',
//                                                                       color:
//                                                                       Colors.white,
//                                                                     ),
//                                                                     validator: _model
//                                                                         .nameController2Validator
//                                                                         .asValidator(
//                                                                         context),
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                             ],
//                                                           ),
//                                                         ),
//                                                       ),
//                                                     ),
//                                                   ],
//                                                 ),
//                                               ),
//                                               Padding(
//                                                 padding: EdgeInsetsDirectional
//                                                     .fromSTEB(0, 0, 0, 20),
//                                                 child: Row(
//                                                   mainAxisSize:
//                                                   MainAxisSize.max,
//                                                   children: [
//                                                     Expanded(
//                                                       child: Container(
//                                                         width: 100,
//                                                         height: 55,
//                                                         decoration:
//                                                         BoxDecoration(
//                                                           border: Border.all(
//                                                             color: Color(
//                                                                 0xFFB7B8BA),
//                                                           ),
//                                                         ),
//                                                         child: Padding(
//                                                           padding:
//                                                           EdgeInsetsDirectional
//                                                               .fromSTEB(5,
//                                                               0, 5, 0),
//                                                           child: Row(
//                                                             mainAxisSize:
//                                                             MainAxisSize
//                                                                 .max,
//                                                             children: [
//                                                               Padding(
//                                                                 padding:
//                                                                 EdgeInsetsDirectional
//                                                                     .fromSTEB(
//                                                                     0,
//                                                                     0,
//                                                                     10,
//                                                                     0),
//                                                                 child:
//                                                                 Container(
//                                                                   width: 30,
//                                                                   height: 30,
//                                                                   decoration:
//                                                                   BoxDecoration(
//                                                                     image:
//                                                                     DecorationImage(
//                                                                       fit: BoxFit
//                                                                           .cover,
//                                                                       image: Image
//                                                                           .asset(
//                                                                         'assets/images/fluent_mail-28-regular.png',
//                                                                       ).image,
//                                                                     ),
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                               Expanded(
//                                                                 child: Padding(
//                                                                   padding: EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                       8,
//                                                                       0,
//                                                                       8,
//                                                                       0),
//                                                                   child:
//                                                                   TextFormField(
//                                                                     controller:
//                                                                     _model
//                                                                         .emailController2,
//                                                                     autofocus:
//                                                                     true,
//                                                                     autofillHints: [
//                                                                       AutofillHints
//                                                                           .email
//                                                                     ],
//                                                                     obscureText:
//                                                                     false,
//                                                                     decoration:
//                                                                     InputDecoration(
//                                                                       labelText:
//                                                                       'Email',
//                                                                       labelStyle: FlutterFlowTheme.of(
//                                                                           context)
//                                                                           .labelMedium
//                                                                           .override(
//                                                                         fontFamily:
//                                                                         'Readex Pro',
//                                                                         color:
//                                                                         Color(0xFFB7B8BA),
//                                                                       ),
//                                                                       hintText:
//                                                                       'Your email',
//                                                                       hintStyle:
//                                                                       FlutterFlowTheme.of(context)
//                                                                           .labelMedium,
//                                                                       enabledBorder:
//                                                                       InputBorder
//                                                                           .none,
//                                                                       focusedBorder:
//                                                                       InputBorder
//                                                                           .none,
//                                                                       errorBorder:
//                                                                       InputBorder
//                                                                           .none,
//                                                                       focusedErrorBorder:
//                                                                       InputBorder
//                                                                           .none,
//                                                                     ),
//                                                                     style: FlutterFlowTheme.of(
//                                                                         context)
//                                                                         .bodyMedium
//                                                                         .override(
//                                                                       fontFamily:
//                                                                       'Readex Pro',
//                                                                       color:
//                                                                       Colors.white,
//                                                                     ),
//                                                                     validator: _model
//                                                                         .emailController2Validator
//                                                                         .asValidator(
//                                                                         context),
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                             ],
//                                                           ),
//                                                         ),
//                                                       ),
//                                                     ),
//                                                   ],
//                                                 ),
//                                               ),
//                                               Padding(
//                                                 padding: EdgeInsetsDirectional
//                                                     .fromSTEB(0, 0, 0, 175),
//                                                 child: Row(
//                                                   mainAxisSize:
//                                                   MainAxisSize.max,
//                                                   children: [
//                                                     Expanded(
//                                                       child: Container(
//                                                         width: 100,
//                                                         height: 55,
//                                                         decoration:
//                                                         BoxDecoration(
//                                                           border: Border.all(
//                                                             color: Color(
//                                                                 0xFFB7B8BA),
//                                                           ),
//                                                         ),
//                                                         child: Padding(
//                                                           padding:
//                                                           EdgeInsetsDirectional
//                                                               .fromSTEB(5,
//                                                               0, 5, 0),
//                                                           child: Row(
//                                                             mainAxisSize:
//                                                             MainAxisSize
//                                                                 .max,
//                                                             children: [
//                                                               Padding(
//                                                                 padding:
//                                                                 EdgeInsetsDirectional
//                                                                     .fromSTEB(
//                                                                     0,
//                                                                     0,
//                                                                     10,
//                                                                     0),
//                                                                 child:
//                                                                 Container(
//                                                                   width: 30,
//                                                                   height: 30,
//                                                                   decoration:
//                                                                   BoxDecoration(
//                                                                     image:
//                                                                     DecorationImage(
//                                                                       fit: BoxFit
//                                                                           .cover,
//                                                                       image: Image
//                                                                           .asset(
//                                                                         'assets/images/iconamoon_lock-thin.png',
//                                                                       ).image,
//                                                                     ),
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                               Expanded(
//                                                                 child: Padding(
//                                                                   padding: EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                       8,
//                                                                       0,
//                                                                       8,
//                                                                       0),
//                                                                   child:
//                                                                   TextFormField(
//                                                                     controller:
//                                                                     _model
//                                                                         .passwordController2,
//                                                                     autofocus:
//                                                                     true,
//                                                                     obscureText:
//                                                                     !_model
//                                                                         .passwordVisibility2,
//                                                                     decoration:
//                                                                     InputDecoration(
//                                                                       labelText:
//                                                                       'Password',
//                                                                       labelStyle: FlutterFlowTheme.of(
//                                                                           context)
//                                                                           .labelMedium
//                                                                           .override(
//                                                                         fontFamily:
//                                                                         'Readex Pro',
//                                                                         color:
//                                                                         Color(0xFFB7B8BA),
//                                                                       ),
//                                                                       hintText:
//                                                                       'Input password',
//                                                                       hintStyle:
//                                                                       FlutterFlowTheme.of(context)
//                                                                           .labelMedium,
//                                                                       enabledBorder:
//                                                                       InputBorder
//                                                                           .none,
//                                                                       focusedBorder:
//                                                                       InputBorder
//                                                                           .none,
//                                                                       errorBorder:
//                                                                       InputBorder
//                                                                           .none,
//                                                                       focusedErrorBorder:
//                                                                       InputBorder
//                                                                           .none,
//                                                                       suffixIcon:
//                                                                       InkWell(
//                                                                         onTap: () =>
//                                                                             setState(
//                                                                                   () => _model.passwordVisibility2 =
//                                                                               !_model.passwordVisibility2,
//                                                                             ),
//                                                                         focusNode:
//                                                                         FocusNode(skipTraversal: true),
//                                                                         child:
//                                                                         Icon(
//                                                                           _model.passwordVisibility2
//                                                                               ? Icons.visibility_outlined
//                                                                               : Icons.visibility_off_outlined,
//                                                                           color:
//                                                                           Color(0xFF484949),
//                                                                           size:
//                                                                           22,
//                                                                         ),
//                                                                       ),
//                                                                     ),
//                                                                     style: FlutterFlowTheme.of(
//                                                                         context)
//                                                                         .bodyMedium
//                                                                         .override(
//                                                                       fontFamily:
//                                                                       'Readex Pro',
//                                                                       color:
//                                                                       Colors.white,
//                                                                     ),
//                                                                     validator: _model
//                                                                         .passwordController2Validator
//                                                                         .asValidator(
//                                                                         context),
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                             ],
//                                                           ),
//                                                         ),
//                                                       ),
//                                                     ),
//                                                   ],
//                                                 ),
//                                               ),
//                                               Padding(
//                                                 padding: EdgeInsetsDirectional
//                                                     .fromSTEB(0, 0, 0, 20),
//                                                 child: Row(
//                                                   mainAxisSize:
//                                                   MainAxisSize.max,
//                                                   mainAxisAlignment:
//                                                   MainAxisAlignment.center,
//                                                   children: [
//                                                     Expanded(
//                                                       child: FFButtonWidget(
//                                                         onPressed: () async {
//                                                           GoRouter.of(context)
//                                                               .prepareAuthEvent();
//
//                                                           final user =
//                                                           await authManager
//                                                               .signInWithEmail(
//                                                             context,
//                                                             _model
//                                                                 .emailController1
//                                                                 .text,
//                                                             _model
//                                                                 .passwordController1
//                                                                 .text,
//                                                           );
//                                                           if (user == null) {
//                                                             return;
//                                                           }
//
//                                                           context.pushNamedAuth(
//                                                               'HomePage',
//                                                               context.mounted);
//                                                         },
//                                                         text: 'SIGN IN',
//                                                         options:
//                                                         FFButtonOptions(
//                                                           height: 55,
//                                                           padding:
//                                                           EdgeInsetsDirectional
//                                                               .fromSTEB(24,
//                                                               0, 24, 0),
//                                                           iconPadding:
//                                                           EdgeInsetsDirectional
//                                                               .fromSTEB(0,
//                                                               0, 0, 0),
//                                                           color:
//                                                           Color(0xFFDE2C2C),
//                                                           textStyle:
//                                                           FlutterFlowTheme.of(
//                                                               context)
//                                                               .titleSmall
//                                                               .override(
//                                                             fontFamily:
//                                                             'Montserrat',
//                                                             color: Colors
//                                                                 .white,
//                                                             fontSize:
//                                                             18,
//                                                           ),
//                                                           elevation: 3,
//                                                           borderSide:
//                                                           BorderSide(
//                                                             color: Colors
//                                                                 .transparent,
//                                                             width: 1,
//                                                           ),
//                                                           borderRadius:
//                                                           BorderRadius
//                                                               .circular(0),
//                                                         ),
//                                                       ),
//                                                     ),
//                                                   ],
//                                                 ),
//                                               ),
//                                               Padding(
//                                                 padding: EdgeInsetsDirectional
//                                                     .fromSTEB(0, 0, 0, 20),
//                                                 child: Row(
//                                                   mainAxisSize:
//                                                   MainAxisSize.max,
//                                                   mainAxisAlignment:
//                                                   MainAxisAlignment.start,
//                                                   children: [
//                                                     Text(
//                                                       'Don\'t have an Account?',
//                                                       style:
//                                                       FlutterFlowTheme.of(
//                                                           context)
//                                                           .bodyMedium
//                                                           .override(
//                                                         fontFamily:
//                                                         'Montserrat',
//                                                       ),
//                                                     ),
//                                                     Padding(
//                                                       padding:
//                                                       EdgeInsetsDirectional
//                                                           .fromSTEB(
//                                                           5, 0, 0, 0),
//                                                       child: Text(
//                                                         'Sign Up',
//                                                         style:
//                                                         FlutterFlowTheme.of(
//                                                             context)
//                                                             .bodyMedium
//                                                             .override(
//                                                           fontFamily:
//                                                           'Montserrat',
//                                                           color: Color(
//                                                               0xFFDE2C2C),
//                                                         ),
//                                                       ),
//                                                     ),
//                                                   ],
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

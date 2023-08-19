
import 'dart:typed_data';

import 'package:flutter/material.dart';


class AuthenticationModel  {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  // FFUploadedFile uploadedLocalFile =
  // FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for Name widget.
  TextEditingController? nameController1;
  String? Function(BuildContext, String?)? nameController1Validator;
  // State field(s) for Email widget.
  TextEditingController? emailController1;
  String? Function(BuildContext, String?)? emailController1Validator;
  // State field(s) for Password widget.
  TextEditingController? passwordController1;
  late bool passwordVisibility1;
  String? Function(BuildContext, String?)? passwordController1Validator;
  // State field(s) for C_Password widget.
  TextEditingController? cPasswordController;
  late bool cPasswordVisibility;
  String? Function(BuildContext, String?)? cPasswordControllerValidator;
  // State field(s) for Name widget.
  TextEditingController? nameController2;
  String? Function(BuildContext, String?)? nameController2Validator;
  // State field(s) for Email widget.
  TextEditingController? emailController2;
  String? Function(BuildContext, String?)? emailController2Validator;
  // State field(s) for Password widget.
  TextEditingController? passwordController2;
  late bool passwordVisibility2;
  String? Function(BuildContext, String?)? passwordController2Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordVisibility1 = false;
    cPasswordVisibility = false;
    passwordVisibility2 = false;
  }

  void dispose() {
    unfocusNode.dispose();
    nameController1?.dispose();
    emailController1?.dispose();
    passwordController1?.dispose();
    cPasswordController?.dispose();
    nameController2?.dispose();
    emailController2?.dispose();
    passwordController2?.dispose();
  }

/// Action blocks are added here.

/// Additional helper methods are added here.
}

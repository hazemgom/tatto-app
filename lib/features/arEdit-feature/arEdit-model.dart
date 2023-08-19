
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../component/model.dart';

class AREditModel  {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Filters component.
  late FiltersModel filtersModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    // filtersModel = createModel(context, () => FiltersModel());
  }

  void dispose() {
    unfocusNode.dispose();
    filtersModel.dispose();
  }

/// Action blocks are added here.

/// Additional helper methods are added here.
}

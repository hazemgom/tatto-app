
import 'package:flutter/material.dart';

import '../../component/model.dart';


class AREditTattooModel  {
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

import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:flutter/material.dart';

import '/widget/paymentfaci_widget.dart' show PaymentfaciWidget;

class PaymentfaciModel extends FlutterFlowModel<PaymentfaciWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

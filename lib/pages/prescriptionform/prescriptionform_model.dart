import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PrescriptionformModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Healthcondition widget.
  TextEditingController? healthconditionController;
  String? Function(BuildContext, String?)? healthconditionControllerValidator;
  // State field(s) for Prescription widget.
  TextEditingController? prescriptionController1;
  String? Function(BuildContext, String?)? prescriptionController1Validator;
  // State field(s) for Comments widget.
  TextEditingController? commentsController;
  String? Function(BuildContext, String?)? commentsControllerValidator;
  // State field(s) for Prescription widget.
  TextEditingController? prescriptionController2;
  String? Function(BuildContext, String?)? prescriptionController2Validator;
  // State field(s) for Prescription widget.
  TextEditingController? prescriptionController3;
  String? Function(BuildContext, String?)? prescriptionController3Validator;
  // State field(s) for Prescription widget.
  TextEditingController? prescriptionController4;
  String? Function(BuildContext, String?)? prescriptionController4Validator;
  // State field(s) for Prescription widget.
  TextEditingController? prescriptionController5;
  String? Function(BuildContext, String?)? prescriptionController5Validator;
  // State field(s) for Prescription widget.
  TextEditingController? prescriptionController6;
  String? Function(BuildContext, String?)? prescriptionController6Validator;
  // State field(s) for Prescription widget.
  TextEditingController? prescriptionController7;
  String? Function(BuildContext, String?)? prescriptionController7Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    healthconditionController?.dispose();
    prescriptionController1?.dispose();
    commentsController?.dispose();
    prescriptionController2?.dispose();
    prescriptionController3?.dispose();
    prescriptionController4?.dispose();
    prescriptionController5?.dispose();
    prescriptionController6?.dispose();
    prescriptionController7?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

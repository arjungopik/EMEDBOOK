import '/backend/backend.dart';
import '/components/upcoming_appointment_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for UpcomingAppointment component.
  late UpcomingAppointmentModel upcomingAppointmentModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    upcomingAppointmentModel =
        createModel(context, () => UpcomingAppointmentModel());
  }

  void dispose() {
    unfocusNode.dispose();
    textController?.dispose();
    upcomingAppointmentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

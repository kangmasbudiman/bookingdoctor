import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'doctor_setting_widget.dart' show DoctorSettingWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DoctorSettingModel extends FlutterFlowModel<DoctorSettingWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Time1 widget.
  FocusNode? time1FocusNode;
  TextEditingController? time1Controller;
  String? Function(BuildContext, String?)? time1ControllerValidator;
  // State field(s) for Time2 widget.
  FocusNode? time2FocusNode;
  TextEditingController? time2Controller;
  String? Function(BuildContext, String?)? time2ControllerValidator;
  // State field(s) for Time3 widget.
  FocusNode? time3FocusNode;
  TextEditingController? time3Controller;
  String? Function(BuildContext, String?)? time3ControllerValidator;
  // State field(s) for Time4 widget.
  FocusNode? time4FocusNode;
  TextEditingController? time4Controller;
  String? Function(BuildContext, String?)? time4ControllerValidator;
  // State field(s) for meeTingLink widget.
  FocusNode? meeTingLinkFocusNode;
  TextEditingController? meeTingLinkController;
  String? Function(BuildContext, String?)? meeTingLinkControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    time1FocusNode?.dispose();
    time1Controller?.dispose();

    time2FocusNode?.dispose();
    time2Controller?.dispose();

    time3FocusNode?.dispose();
    time3Controller?.dispose();

    time4FocusNode?.dispose();
    time4Controller?.dispose();

    meeTingLinkFocusNode?.dispose();
    meeTingLinkController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'near_by_d_model.dart';
export 'near_by_d_model.dart';

class NearByDWidget extends StatefulWidget {
  const NearByDWidget({
    Key? key,
    required this.profile,
    required this.name,
    required this.specialist,
    required this.rating,
    required this.distance,
  }) : super(key: key);

  final String? profile;
  final String? name;
  final String? specialist;
  final int? rating;
  final double? distance;

  @override
  _NearByDWidgetState createState() => _NearByDWidgetState();
}

class _NearByDWidgetState extends State<NearByDWidget> {
  late NearByDModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NearByDModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFF2F2F2),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 9.0, 0.0, 0.0),
            child: Container(
              width: 48.0,
              height: 48.0,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.network(
                widget.profile!,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            widget.name!,
            style: FlutterFlowTheme.of(context).bodyMedium,
          ),
          Text(
            widget.specialist!,
            style: FlutterFlowTheme.of(context).bodySmall,
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.star_purple500_sharp,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 24.0,
                ),
                Flexible(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(2.0, 3.0, 9.0, 0.0),
                    child: Text(
                      valueOrDefault<String>(
                        widget.rating?.toString(),
                        '2',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: Color(0xFFBA375C),
                          ),
                    ),
                  ),
                ),
                Icon(
                  Icons.location_on,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 24.0,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 7.0, 0.0),
                  child: Text(
                    '${widget.distance?.toString()}M',
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

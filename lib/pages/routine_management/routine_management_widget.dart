import '/backend/backend.dart';
import '/components/routine_card/routine_card_widget.dart';
import '/components/stat_mini/stat_mini_widget.dart';
import '/components/text_field/text_field_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'routine_management_model.dart';
export 'routine_management_model.dart';

class RoutineManagementWidget extends StatefulWidget {
  const RoutineManagementWidget({super.key});

  static String routeName = 'RoutineManagement';
  static String routePath = '/routineManagement';

  @override
  State<RoutineManagementWidget> createState() =>
      _RoutineManagementWidgetState();
}

class _RoutineManagementWidgetState extends State<RoutineManagementWidget> {
  late RoutineManagementModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RoutineManagementModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Container(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 0.0,
                height: 0.0,
              ),
              Container(
                child: SingleChildScrollView(
                  primary: false,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(24.0),
                        child: StreamBuilder<List<RoutinesRecord>>(
                          stream: queryRoutinesRecord(),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: CircularProgressIndicator(),
                                ),
                              );
                            }
                            List<RoutinesRecord>
                                columnPaddingRoutinesRecordList =
                                snapshot.data!;

                            return Container(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      FlutterFlowIconButton(
                                        borderRadius: 8.0,
                                        buttonSize: 40.0,
                                        fillColor: Colors.transparent,
                                        icon: Icon(
                                          Icons.arrow_back_rounded,
                                          size: 24.0,
                                        ),
                                        onPressed: () async {
                                          context.pop();
                                        },
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Gestión de Rutinas',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .headlineMedium
                                                  .override(
                                                    font: GoogleFonts.poppins(
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineMedium
                                                              .fontStyle,
                                                    ),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w800,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineMedium
                                                            .fontStyle,
                                                    lineHeight: 1.3,
                                                  ),
                                            ),
                                            Text(
                                              'Administra los planes de entrenamiento',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                        lineHeight: 1.5,
                                                      ),
                                            ),
                                          ].divide(SizedBox(height: 4.0)),
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          shape: BoxShape.rectangle,
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Container(
                                            child: Container(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Icon(
                                                Icons.add_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .onPrimary,
                                                size: 28.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: wrapWithModel(
                                          model: _model.statMiniModel1,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: StatMiniWidget(
                                            label: 'Total Rutinas',
                                            value: valueOrDefault<String>(
                                              columnPaddingRoutinesRecordList
                                                  .length
                                                  .toString(),
                                              '320',
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: StreamBuilder<
                                            List<UserRoutinesRecord>>(
                                          stream: queryUserRoutinesRecord(),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 50,
                                                  height: 50,
                                                  child:
                                                      CircularProgressIndicator(),
                                                ),
                                              );
                                            }
                                            List<UserRoutinesRecord>
                                                statMiniUserRoutinesRecordList =
                                                snapshot.data!;

                                            return wrapWithModel(
                                              model: _model.statMiniModel2,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: StatMiniWidget(
                                                label: 'Asignadas',
                                                value: valueOrDefault<String>(
                                                  statMiniUserRoutinesRecordList
                                                      .length
                                                      .toString(),
                                                  '120',
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: wrapWithModel(
                                          model: _model.statMiniModel3,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: StatMiniWidget(
                                            label: 'Pendientes',
                                            value: valueOrDefault<String>(
                                              functions
                                                  .draftRoutines(
                                                      columnPaddingRoutinesRecordList
                                                          .toList())
                                                  .toString(),
                                              '200',
                                            ),
                                          ),
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 16.0)),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: wrapWithModel(
                                          model: _model.textFieldModel,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: TextFieldWidget(
                                            label: '',
                                            labelPresent: false,
                                            helper: '',
                                            helperPresent: false,
                                            leadingIcon: Icon(
                                              Icons.search_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 24.0,
                                            ),
                                            leadingIconPresent: true,
                                            trailingIconPresent: false,
                                            hint: 'Buscar rutina...',
                                            value: valueOrDefault<String>(
                                              _model.searchQuery,
                                              'Buscar rutina...',
                                            ),
                                            onChange: '',
                                            onSubmit: '',
                                            variant: 'filled',
                                            error: false,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 52.0,
                                        height: 52.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          shape: BoxShape.rectangle,
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 1.0,
                                          ),
                                        ),
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Icon(
                                          Icons.tune_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 24.0,
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 16.0)),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Rutinas Disponibles',
                                            style: FlutterFlowTheme.of(context)
                                                .titleMedium
                                                .override(
                                                  font: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.bold,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleMedium
                                                            .fontStyle,
                                                  ),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontStyle,
                                                  lineHeight: 1.45,
                                                ),
                                          ),
                                          Text(
                                            'Ver todas',
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  font: GoogleFonts.inter(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelLarge
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelLarge
                                                            .fontStyle,
                                                  ),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelLarge
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelLarge
                                                          .fontStyle,
                                                  lineHeight: 1.4,
                                                ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(32.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.inbox_rounded,
                                              size: 24.0,
                                            ),
                                            Text(
                                              'Nada aún',
                                              textAlign: TextAlign.center,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .titleSmall
                                                  .override(
                                                    font: GoogleFonts.poppins(
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .fontStyle,
                                                    ),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmall
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmall
                                                            .fontStyle,
                                                    lineHeight: 1.5,
                                                  ),
                                            ),
                                            Text(
                                              'Las rutinas que agregues aparecerán aquí',
                                              textAlign: TextAlign.center,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmall
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .fontStyle,
                                                        lineHeight: 1.4,
                                                      ),
                                            ),
                                          ].divide(SizedBox(height: 16.0)),
                                        ),
                                      ),

                                      // ff_lite_listview_data:${filtered_routines}
                                      StreamBuilder<List<RoutinesRecord>>(
                                        stream: queryRoutinesRecord(),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50,
                                                height: 50,
                                                child:
                                                    CircularProgressIndicator(),
                                              ),
                                            );
                                          }
                                          List<RoutinesRecord>
                                              listViewRoutinesRecordList =
                                              snapshot.data!;

                                          return Builder(
                                            builder: (context) {
                                              final item =
                                                  listViewRoutinesRecordList
                                                      .toList();

                                              return ListView.builder(
                                                padding: EdgeInsets.zero,
                                                primary: false,
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                itemCount: item.length,
                                                itemBuilder:
                                                    (context, itemIndex) {
                                                  final itemItem =
                                                      item[itemIndex];
                                                  return RoutineCardWidget(
                                                    key: Key(
                                                        'Key824_${itemIndex}_of_${item.length}'),
                                                    title:
                                                        valueOrDefault<String>(
                                                      itemItem.title,
                                                      'Glúteos y Piernas',
                                                    ),
                                                    exercises:
                                                        valueOrDefault<String>(
                                                      itemItem.exercisesCount
                                                          .toString(),
                                                      '9',
                                                    ),
                                                    duration:
                                                        valueOrDefault<String>(
                                                      '${valueOrDefault<String>(
                                                        itemItem
                                                            .estimatedDuration
                                                            .toString(),
                                                        '2',
                                                      )}horas',
                                                      '2hrs',
                                                    ),
                                                    status:
                                                        valueOrDefault<String>(
                                                      itemItem.status,
                                                      'Glúteos y Piernas',
                                                    ),
                                                    clients: '15',
                                                  );
                                                },
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    ].divide(SizedBox(height: 16.0)),
                                  ),
                                  Container(
                                    child: Padding(
                                      padding: EdgeInsets.all(32.0),
                                      child: Container(
                                        child: Container(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.info_outline_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent3,
                                                size: 32.0,
                                              ),
                                              Text(
                                                'Recuerda asignar entrenadores a las nuevas rutinas antes de activarlas.',
                                                textAlign: TextAlign.center,
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodySmall
                                                    .override(
                                                      font: GoogleFonts.inter(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .fontStyle,
                                                      ),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmall
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmall
                                                              .fontStyle,
                                                      lineHeight: 1.4,
                                                    ),
                                              ),
                                            ].divide(SizedBox(height: 8.0)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ].divide(SizedBox(height: 24.0)),
                              ),
                            );
                          },
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
    );
  }
}

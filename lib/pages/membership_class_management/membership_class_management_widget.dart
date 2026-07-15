import '/backend/backend.dart';
import '/components/action_tab/action_tab_widget.dart';
import '/components/button/button_widget.dart';
import '/components/class_item/class_item_widget.dart';
import '/components/plan_card/plan_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'membership_class_management_model.dart';
export 'membership_class_management_model.dart';

class MembershipClassManagementWidget extends StatefulWidget {
  const MembershipClassManagementWidget({super.key});

  static String routeName = 'MembershipClassManagement';
  static String routePath = '/membershipClassManagement';

  @override
  State<MembershipClassManagementWidget> createState() =>
      _MembershipClassManagementWidgetState();
}

class _MembershipClassManagementWidgetState
    extends State<MembershipClassManagementWidget> {
  late MembershipClassManagementModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MembershipClassManagementModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<UserMembershipsRecord>>(
      stream: queryUserMembershipsRecord(),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50,
                height: 50,
                child: CircularProgressIndicator(),
              ),
            ),
          );
        }
        List<UserMembershipsRecord>
            membershipClassManagementUserMembershipsRecordList = snapshot.data!;

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
                    child: StreamBuilder<List<ClassesRecord>>(
                      stream: queryClassesRecord(),
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
                        List<ClassesRecord> columnClassesRecordList =
                            snapshot.data!;

                        return SingleChildScrollView(
                          primary: false,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: List.generate(
                                columnClassesRecordList.length, (columnIndex) {
                              final columnClassesRecord =
                                  columnClassesRecordList[columnIndex];
                              return Padding(
                                padding: EdgeInsets.all(20.0),
                                child: StreamBuilder<List<MembershipsRecord>>(
                                  stream: queryMembershipsRecord(),
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
                                    List<MembershipsRecord>
                                        columnPaddingMembershipsRecordList =
                                        snapshot.data!;

                                    return Container(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  FlutterFlowIconButton(
                                                    borderRadius: 8.0,
                                                    buttonSize: 40.0,
                                                    fillColor:
                                                        Colors.transparent,
                                                    icon: Icon(
                                                      Icons.arrow_back_rounded,
                                                      size: 24.0,
                                                    ),
                                                    onPressed: () async {
                                                      context.pop();
                                                    },
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Membresías',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .poppins(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .headlineMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineMedium
                                                                      .fontStyle,
                                                                  lineHeight:
                                                                      1.3,
                                                                ),
                                                      ),
                                                      Text(
                                                        'GymTrack CR • Admin Portal',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
                                                                          .inter(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontStyle,
                                                                  lineHeight:
                                                                      1.4,
                                                                ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(height: 4.0)),
                                                  ),
                                                ].divide(SizedBox(width: 16.0)),
                                              ),
                                              Container(
                                                width: 44.0,
                                                height: 44.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  shape: BoxShape.rectangle,
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    width: 1.0,
                                                  ),
                                                ),
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Container(
                                                  width: 0.0,
                                                  height: 0.0,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                              shape: BoxShape.rectangle,
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 1.0,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(4.0),
                                              child: Container(
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Expanded(
                                                      flex: 1,
                                                      child: ActionTabWidget(
                                                        key: Key(
                                                            'Key443_${columnIndex}_of_${columnClassesRecordList.length}'),
                                                        active:
                                                            _model.activeTab ==
                                                                'Memberships',
                                                        tapAction:
                                                            'form.set_tab(\'Memberships\')',
                                                        label: 'Membresía',
                                                      ),
                                                    ),
                                                    Expanded(
                                                      flex: 1,
                                                      child: ActionTabWidget(
                                                        key: Key(
                                                            'Key444_${columnIndex}_of_${columnClassesRecordList.length}'),
                                                        active:
                                                            _model.activeTab ==
                                                                'Classes',
                                                        tapAction:
                                                            'form.set_tab(\'Classes\')',
                                                        label: 'Clases',
                                                      ),
                                                    ),
                                                    Expanded(
                                                      flex: 1,
                                                      child: ActionTabWidget(
                                                        key: Key(
                                                            'Key445_${columnIndex}_of_${columnClassesRecordList.length}'),
                                                        active:
                                                            _model.activeTab ==
                                                                'Schedule',
                                                        tapAction:
                                                            'form.set_tab(\'Schedule\')',
                                                        label: 'Horarios',
                                                      ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(width: 4.0)),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                flex: 1,
                                                child: Container(
                                                  height: 100.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                    shape: BoxShape.rectangle,
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.all(16.0),
                                                    child: Container(
                                                      child: Container(
                                                        height: 68.0,
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Icon(
                                                              Icons
                                                                  .credit_card_rounded,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .onPrimary,
                                                              size: 24.0,
                                                            ),
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  '120',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .poppins(
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .titleLarge
                                                                              .fontStyle,
                                                                        ),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .onPrimary,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .titleLarge
                                                                            .fontStyle,
                                                                        lineHeight:
                                                                            1.4,
                                                                      ),
                                                                ),
                                                                Opacity(
                                                                  opacity: 0.8,
                                                                  child: Text(
                                                                    'Active Plans',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmall
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.inter(
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).labelSmall.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).labelSmall.fontStyle,
                                                                          ),
                                                                          color:
                                                                              FlutterFlowTheme.of(context).onPrimary,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .labelSmall
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .labelSmall
                                                                              .fontStyle,
                                                                          lineHeight:
                                                                              1.2,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: Container(
                                                  height: 100.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                    shape: BoxShape.rectangle,
                                                    border: Border.all(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      width: 1.0,
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.all(16.0),
                                                    child: Container(
                                                      child: Container(
                                                        height: 68.0,
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Icon(
                                                              Icons
                                                                  .trending_up_rounded,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .success,
                                                              size: 24.0,
                                                            ),
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  '₡1.2M',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .poppins(
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .titleLarge
                                                                              .fontStyle,
                                                                        ),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .titleLarge
                                                                            .fontStyle,
                                                                        lineHeight:
                                                                            1.4,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  'Por mes',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .inter(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .labelSmall
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .labelSmall
                                                                              .fontStyle,
                                                                        ),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelSmall
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelSmall
                                                                            .fontStyle,
                                                                        lineHeight:
                                                                            1.2,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ].divide(SizedBox(width: 16.0)),
                                          ),
                                          if (_model.activeTab == 'Memberships')
                                            Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.stretch,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'Planes de membresías',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .titleMedium
                                                          .override(
                                                            font: GoogleFonts
                                                                .poppins(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMedium
                                                                      .fontStyle,
                                                            ),
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMedium
                                                                    .fontStyle,
                                                            lineHeight: 1.45,
                                                          ),
                                                    ),
                                                    ButtonWidget(
                                                      key: Key(
                                                          'Key473_${columnIndex}_of_${columnClassesRecordList.length}'),
                                                      icon: Icon(
                                                        Icons.add_rounded,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        size: 24.0,
                                                      ),
                                                      iconPresent: true,
                                                      iconEndPresent: false,
                                                      content: 'Nuevo Plan',
                                                      variant: 'primary',
                                                      size: 'small',
                                                      fullWidth: false,
                                                      loading: false,
                                                      disabled: false,
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.all(32.0),
                                                  child: StreamBuilder<
                                                      List<MembershipsRecord>>(
                                                    stream:
                                                        queryMembershipsRecord(),
                                                    builder:
                                                        (context, snapshot) {
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
                                                      List<MembershipsRecord>
                                                          columnMembershipsRecordList =
                                                          snapshot.data!;

                                                      return Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: List.generate(
                                                            columnMembershipsRecordList
                                                                .length,
                                                            (columnIndex) {
                                                          final columnMembershipsRecord =
                                                              columnMembershipsRecordList[
                                                                  columnIndex];
                                                          return Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    2.0),
                                                            child: Icon(
                                                              Icons
                                                                  .inbox_rounded,
                                                              size: 24.0,
                                                            ),
                                                          );
                                                        }).divide(SizedBox(
                                                            height: 16.0)),
                                                      );
                                                    },
                                                  ),
                                                ),

                                                // ff_lite_listview_data:${memberships.all}
                                                StreamBuilder<
                                                    List<MembershipsRecord>>(
                                                  stream:
                                                      queryMembershipsRecord(),
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
                                                    List<MembershipsRecord>
                                                        listViewMembershipsRecordList =
                                                        snapshot.data!;

                                                    return Builder(
                                                      builder: (context) {
                                                        final item =
                                                            listViewMembershipsRecordList
                                                                .toList();

                                                        return ListView.builder(
                                                          padding:
                                                              EdgeInsets.zero,
                                                          primary: false,
                                                          shrinkWrap: true,
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          itemCount:
                                                              item.length,
                                                          itemBuilder: (context,
                                                              itemIndex) {
                                                            final itemItem =
                                                                item[itemIndex];
                                                            return PlanCardWidget(
                                                              key: Key(
                                                                  'Key502_${itemIndex}_of_${item.length}'),
                                                              name:
                                                                  valueOrDefault<
                                                                      String>(
                                                                itemItem
                                                                    .planName,
                                                                'Estudiante',
                                                              ),
                                                              duration:
                                                                  '${valueOrDefault<String>(
                                                                itemItem
                                                                    .durationMonths
                                                                    .toString(),
                                                                '1',
                                                              )} Mes',
                                                              price:
                                                                  valueOrDefault<
                                                                      String>(
                                                                itemItem.price
                                                                    .toString(),
                                                                '14000',
                                                              ),
                                                              planId: itemItem
                                                                  .reference.id,
                                                            );
                                                          },
                                                        );
                                                      },
                                                    );
                                                  },
                                                ),
                                              ].divide(SizedBox(height: 16.0)),
                                            ),
                                          if (_model.activeTab == 'Classes')
                                            Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.stretch,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'Upcoming Classes',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .titleMedium
                                                          .override(
                                                            font: GoogleFonts
                                                                .poppins(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMedium
                                                                      .fontStyle,
                                                            ),
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMedium
                                                                    .fontStyle,
                                                            lineHeight: 1.45,
                                                          ),
                                                    ),
                                                    ButtonWidget(
                                                      key: Key(
                                                          'Key506_${columnIndex}_of_${columnClassesRecordList.length}'),
                                                      icon: Icon(
                                                        Icons
                                                            .event_available_rounded,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        size: 24.0,
                                                      ),
                                                      iconPresent: true,
                                                      iconEndPresent: false,
                                                      content: 'Schedule',
                                                      variant: 'outline',
                                                      size: 'small',
                                                      fullWidth: false,
                                                      loading: false,
                                                      disabled: false,
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.all(32.0),
                                                  child: StreamBuilder<
                                                      List<ClassesRecord>>(
                                                    stream:
                                                        queryClassesRecord(),
                                                    builder:
                                                        (context, snapshot) {
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
                                                      List<ClassesRecord>
                                                          columnClassesRecordList =
                                                          snapshot.data!;

                                                      return Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: List.generate(
                                                            columnClassesRecordList
                                                                .length,
                                                            (columnIndex) {
                                                          final columnClassesRecord =
                                                              columnClassesRecordList[
                                                                  columnIndex];
                                                          return Icon(
                                                            Icons.inbox_rounded,
                                                            size: 24.0,
                                                          );
                                                        }).divide(SizedBox(
                                                            height: 16.0)),
                                                      );
                                                    },
                                                  ),
                                                ),

                                                // ff_lite_listview_data:${classes.all}
                                                StreamBuilder<
                                                    List<ClassesRecord>>(
                                                  stream: queryClassesRecord(),
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
                                                    List<ClassesRecord>
                                                        listViewClassesRecordList =
                                                        snapshot.data!;

                                                    return Builder(
                                                      builder: (context) {
                                                        final item =
                                                            listViewClassesRecordList
                                                                .toList();

                                                        return ListView.builder(
                                                          padding:
                                                              EdgeInsets.zero,
                                                          primary: false,
                                                          shrinkWrap: true,
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          itemCount:
                                                              item.length,
                                                          itemBuilder: (context,
                                                              itemIndex) {
                                                            final itemItem =
                                                                item[itemIndex];
                                                            return ClassItemWidget(
                                                              key: Key(
                                                                  'Key543_${itemIndex}_of_${item.length}'),
                                                              icon: itemItem
                                                                  .imageUrl,
                                                              title: itemItem
                                                                  .title,
                                                              time: itemItem
                                                                  .startTime,
                                                              spots: itemItem
                                                                  .availableSpots
                                                                  .toString(),
                                                              classId: itemItem
                                                                  .reference.id,
                                                              status: itemItem
                                                                  .status,
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
                                            height: 24.0,
                                          ),
                                        ].divide(SizedBox(height: 24.0)),
                                      ),
                                    );
                                  },
                                ),
                              );
                            }),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

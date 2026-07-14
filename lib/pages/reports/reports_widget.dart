import '/components/chart_section_child2_widget.dart';
import '/components/chart_section_child_widget.dart';
import '/components/chart_section_widget.dart';
import '/components/kpi_card3_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'reports_model.dart';
export 'reports_model.dart';

/// reports
/// Diseñar pantalla móvil para GymTrack CR.
///
/// Mantener exactamente la misma línea visual del dashboard administrativo.
///
/// Título:
/// "Reportes"
///
/// Subtítulo:
/// "Indicadores y métricas del gimnasio"
///
/// Mostrar tarjetas KPI en la parte superior:
///
/// Usuarios Totales
/// 320
///
/// Membresías Activas
/// 120
///
/// Ingresos Mensuales
/// ₡1.2M
///
/// Reservas del Mes
/// 240
///
/// Debajo mostrar gráficos modernos.
///
/// Gráfico de barras:
/// Ingresos por mes
///
/// Gráfico circular:
/// Distribución de membresías
///
/// Sección filtros:
///
/// Fecha inicio
/// Fecha fin
///
/// Botón:
/// Generar Reporte
///
/// Botón:
/// Exportar PDF
///
/// Diseño tipo dashboard ejecutivo profesional para administración de
/// gimnasio.
/// Mi recomendación
///
/// Antes de seguir en Figma, agrega además una pantalla que el profesor suele
/// valorar mucho:
///
/// Pantalla 20 - Gestión de Entrenadores (HU-04)
///
/// Porque tienes la HU, pero actualmente no veo una pantalla específica para
/// ella.
///
/// Prompt:
///
/// Diseñar pantalla móvil para GymTrack CR.
///
/// Título:
/// "Entrenadores"
///
/// Subtítulo:
/// "Gestión de personal"
///
/// Botón:
/// + Nuevo Entrenador
///
/// Listado de entrenadores.
///
/// Cada tarjeta incluye:
///
/// - Foto
/// - Nombre
/// - Especialidad
/// - Cantidad de clientes asignados
/// - Estado Activo/Inactivo
///
/// Acciones:
///
/// Editar
/// Desactivar
/// Ver perfil
///
/// Mantener estilo corporativo azul oscuro y blanco utilizado en toda la
/// aplicación.
///
/// Con imágenes relacionadas al deporte en gimnasios
/// Mantener el diseño corporativo existente:
///
/// - Azul oscuro #1e3a5f
/// - Gris claro
/// - Tarjetas blancas
/// - Estilo minimalista
class ReportsWidget extends StatefulWidget {
  const ReportsWidget({super.key});

  static String routeName = 'Reports';
  static String routePath = '/reports';

  @override
  State<ReportsWidget> createState() => _ReportsWidgetState();
}

class _ReportsWidgetState extends State<ReportsWidget> {
  late ReportsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReportsModel());
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
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Regresar',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: GoogleFonts.poppins(
                    fontWeight:
                        FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SingleChildScrollView(
          primary: false,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primary,
                  shape: BoxShape.rectangle,
                ),
                child: Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Reportes',
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                font: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .fontStyle,
                                ),
                                color: Colors.white,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .fontStyle,
                                lineHeight: 1.4,
                              ),
                        ),
                        Text(
                          'Indicadores y métricas del gimnasio',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xCCFFFFFF),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                    lineHeight: 1.4,
                                  ),
                        ),
                      ].divide(SizedBox(height: 4.0)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(24.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 1,
                              child: wrapWithModel(
                                model: _model.kpiCardModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: KpiCard3Widget(
                                  color: FlutterFlowTheme.of(context).primary,
                                  icon: Icon(
                                    Icons.groups_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 20.0,
                                  ),
                                  label: 'Usuarios Totales',
                                  value: '320',
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: wrapWithModel(
                                model: _model.kpiCardModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: KpiCard3Widget(
                                  color: FlutterFlowTheme.of(context).success,
                                  icon: Icon(
                                    Icons.card_membership_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 20.0,
                                  ),
                                  label: 'Membresías Activas',
                                  value: '120',
                                ),
                              ),
                            ),
                          ].divide(SizedBox(width: 16.0)),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 1,
                              child: wrapWithModel(
                                model: _model.kpiCardModel3,
                                updateCallback: () => safeSetState(() {}),
                                child: KpiCard3Widget(
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  icon: Icon(
                                    Icons.payments_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 20.0,
                                  ),
                                  label: 'Ingresos Mensuales',
                                  value: '₡1.2M',
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: wrapWithModel(
                                model: _model.kpiCardModel4,
                                updateCallback: () => safeSetState(() {}),
                                child: KpiCard3Widget(
                                  color: FlutterFlowTheme.of(context).info,
                                  icon: Icon(
                                    Icons.event_available_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 20.0,
                                  ),
                                  label: 'Reservas del Mes',
                                  value: '240',
                                ),
                              ),
                            ),
                          ].divide(SizedBox(width: 16.0)),
                        ),
                      ].divide(SizedBox(height: 16.0)),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(12.0),
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 1.0,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(24.0),
                        child: Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                'Filtros de Período',
                                style: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .fontStyle,
                                      lineHeight: 1.4,
                                    ),
                              ),
                            ].divide(SizedBox(height: 16.0)),
                          ),
                        ),
                      ),
                    ),
                    wrapWithModel(
                      model: _model.chartSectionModel1,
                      updateCallback: () => safeSetState(() {}),
                      child: ChartSectionWidget(
                        title: 'Ingresos por mes',
                        child: () => ChartSectionChildWidget(),
                      ),
                    ),
                    wrapWithModel(
                      model: _model.chartSectionModel2,
                      updateCallback: () => safeSetState(() {}),
                      child: ChartSectionWidget(
                        title: 'Distribución de membresías',
                        child: () => ChartSectionChild2Widget(),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        FlutterFlowIconButton(
                          borderColor: FlutterFlowTheme.of(context).alternate,
                          borderRadius: 12.0,
                          borderWidth: 1.0,
                          buttonSize: 40.0,
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          icon: Icon(
                            Icons.share_rounded,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                      ].divide(SizedBox(width: 16.0)),
                    ),
                    Container(
                      height: 24.0,
                    ),
                  ].divide(SizedBox(height: 24.0)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

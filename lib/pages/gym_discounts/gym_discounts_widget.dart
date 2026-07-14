import '/components/promo_card2_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'gym_discounts_model.dart';
export 'gym_discounts_model.dart';

/// una pagina para gestionar las promociones del gimnasio, con imagenes
/// relacionadas a deportes
/// Diseñar pantalla móvil para GymTrack CR.
///
/// Mantener exactamente el mismo estilo visual del sistema:
///
/// - Header azul oscuro
/// - Fondo gris claro
/// - Tarjetas blancas
/// - Botones redondeados
///
/// Título:
/// "Promociones"
///
/// Subtítulo:
/// "Gestiona descuentos y campañas"
///
/// Parte superior:
///
/// Botón azul:
/// "+ Nueva Promoción"
///
/// Listado de promociones activas.
///
/// Cada tarjeta debe mostrar:
///
/// - Imagen promocional
/// - Nombre de la promoción
/// - Porcentaje de descuento
/// - Fecha de inicio
/// - Fecha de vencimiento
/// - Estado Activa o Vencida
///
/// Ejemplos:
///
/// 50% Matrícula
/// 30% Plan Premium
/// 2x1 Funcionales
///
/// Agregar íconos:
///
/// - Editar
/// - Eliminar
///
/// Diseño limpio, moderno y comercial para aplicación fitness.
class GymDiscountsWidget extends StatefulWidget {
  const GymDiscountsWidget({super.key});

  static String routeName = 'GymDiscounts';
  static String routePath = '/gymDiscounts';

  @override
  State<GymDiscountsWidget> createState() => _GymDiscountsWidgetState();
}

class _GymDiscountsWidgetState extends State<GymDiscountsWidget> {
  late GymDiscountsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GymDiscountsModel());
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
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SafeArea(
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF1A237E),
                  shape: BoxShape.rectangle,
                ),
                child: Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Promociones',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .override(
                                        font: GoogleFonts.poppins(
                                          fontWeight: FontWeight.bold,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
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
                                  'Gestiona descuentos y campañas',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
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
                            Container(
                              width: 42.0,
                              height: 42.0,
                              decoration: BoxDecoration(
                                color: Color(0x33FFFFFF),
                                shape: BoxShape.circle,
                              ),
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                'GYM',
                                textAlign: TextAlign.center,
                                maxLines: 1,
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontStyle,
                                      ),
                                      color: Colors.white,
                                      fontSize: 15.96,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                      lineHeight: 1.4,
                                    ),
                                overflow: TextOverflow.clip,
                              ),
                            ),
                          ],
                        ),
                      ].divide(SizedBox(height: 16.0)),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: SingleChildScrollView(
                  primary: false,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(24.0),
                        child: Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              wrapWithModel(
                                model: _model.promoCardModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: PromoCard2Widget(
                                  imgDesc:
                                      'https://dimg.dreamflow.cloud/v1/image/Gym%20reception%20desk%20with%20modern%20equipment',
                                  isActive: true,
                                  title: 'Matrícula Gratis',
                                  discount: '15% OFF en tu mensualidad',
                                  startDate: '01 Jul 2026',
                                  endDate: '31 Oct 2026',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.promoCardModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: PromoCard2Widget(
                                  imgDesc:
                                      'https://dimg.dreamflow.cloud/v1/image/Person%20lifting%20heavy%20dumbbells%20in%20a%20professional%20gym',
                                  isActive: true,
                                  title: 'Plan Premium Anual',
                                  discount: '30% OFF',
                                  startDate: '15 Sep 2026',
                                  endDate: '15 Nov 2026',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.promoCardModel3,
                                updateCallback: () => safeSetState(() {}),
                                child: PromoCard2Widget(
                                  imgDesc:
                                      'https://dimg.dreamflow.cloud/v1/image/Group%20of%20people%20doing%20functional%20training%20circuit',
                                  isActive: false,
                                  title: 'Clases Funcionales',
                                  discount: '2x1',
                                  startDate: '01 Aug 2023',
                                  endDate: '31 Aug 2023',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.promoCardModel4,
                                updateCallback: () => safeSetState(() {}),
                                child: PromoCard2Widget(
                                  imgDesc:
                                      'https://dimg.dreamflow.cloud/v1/image/Protein%20shake%20and%20fitness%20supplements%20on%20a%20bench',
                                  isActive: true,
                                  title: 'Suplementos Proteicos',
                                  discount: '15% OFF',
                                  startDate: '10 Oct 2023',
                                  endDate: '25 Oct 2023',
                                ),
                              ),
                            ].divide(SizedBox(height: 24.0)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

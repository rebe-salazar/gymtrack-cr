import '/components/user_role_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'roles_and_permissons_model.dart';
export 'roles_and_permissons_model.dart';

/// Diseñar pantalla móvil para aplicación de gimnasio llamada GymTrack CR.
///
/// Estilo visual idéntico al resto de la aplicación:
///
/// - Header azul oscuro corporativo
/// - Fondo gris claro
/// - Tarjetas blancas con esquinas redondeadas
/// - Diseño limpio y profesional
/// - Tipografía moderna tipo Poppins
///
/// Título:
/// "Roles y Permisos"
///
/// Subtítulo:
/// "Administración de accesos del sistema"
///
/// Mostrar listado de usuarios en tarjetas.
///
/// Cada tarjeta debe contener:
///
/// - Foto de perfil circular
/// - Nombre del usuario
/// - Correo electrónico
/// - Rol actual
///
/// Roles disponibles:
///
/// - Administrador
/// - Entrenador
/// - Cliente
///
/// Agregar selector desplegable para cambiar el rol.
///
/// Agregar botón azul:
/// "Guardar cambios"
///
/// Mostrar estado:
/// Activo / Inactivo
///
/// Diseño moderno tipo panel administrativo profesional para gimnasio.
class RolesAndPermissonsWidget extends StatefulWidget {
  const RolesAndPermissonsWidget({super.key});

  static String routeName = 'RolesAndPermissons';
  static String routePath = '/rolesAndPermissons';

  @override
  State<RolesAndPermissonsWidget> createState() =>
      _RolesAndPermissonsWidgetState();
}

class _RolesAndPermissonsWidgetState extends State<RolesAndPermissonsWidget> {
  late RolesAndPermissonsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RolesAndPermissonsModel());
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
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            print('FAB pressed ...');
          },
          backgroundColor: Color(0xFF1E3A5F),
          icon: Icon(
            Icons.add_rounded,
            color: Colors.white,
            size: 24.0,
          ),
          elevation: 0.0,
          label: Text(
            'Nuevo Usuario',
            style: FlutterFlowTheme.of(context).labelLarge.override(
                  font: GoogleFonts.inter(
                    fontWeight:
                        FlutterFlowTheme.of(context).labelLarge.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).labelLarge.fontStyle,
                  ),
                  color: Colors.white,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).labelLarge.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                  lineHeight: 1.4,
                ),
          ),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF1E3A5F),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(24.0),
                  bottomRight: Radius.circular(24.0),
                ),
                shape: BoxShape.rectangle,
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 24.0),
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                                'Roles y Permisos',
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      font: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .fontStyle,
                                      ),
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .fontStyle,
                                    ),
                              ),
                              Text(
                                'Administración de accesos del sistema',
                                style: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontStyle,
                                      ),
                                      color: Color(0xCCFFFFFF),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontStyle,
                                      lineHeight: 1.4,
                                    ),
                              ),
                            ].divide(SizedBox(height: 4.0)),
                          ),
                          FlutterFlowIconButton(
                            borderRadius: 8.0,
                            buttonSize: 44.0,
                            fillColor: Colors.transparent,
                            icon: Icon(
                              Icons.admin_panel_settings_rounded,
                              color: Colors.white,
                              size: 28.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                        ],
                      ),
                    ].divide(SizedBox(height: 4.0)),
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
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              wrapWithModel(
                                model: _model.userRoleCardModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: UserRoleCardWidget(
                                  initial: 'CR',
                                  name: 'Carlos Rodríguez',
                                  email: 'c.rodriguez@gymtrack.cr',
                                  active: true,
                                  status: 'Activo',
                                  role: 'Administrador',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.userRoleCardModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: UserRoleCardWidget(
                                  initial: 'ME',
                                  name: 'María Esquivel',
                                  email: 'm.esquivel@gymtrack.cr',
                                  active: true,
                                  status: 'Activo',
                                  role: 'Entrenador',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.userRoleCardModel3,
                                updateCallback: () => safeSetState(() {}),
                                child: UserRoleCardWidget(
                                  initial: 'RC',
                                  name: 'Roberto Chaves',
                                  email: 'r.chaves92@gmail.com',
                                  active: false,
                                  status: 'Inactivo',
                                  role: 'Cliente',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.userRoleCardModel4,
                                updateCallback: () => safeSetState(() {}),
                                child: UserRoleCardWidget(
                                  initial: 'LM',
                                  name: 'Lucía Méndez',
                                  email: 'l.mendez@gymtrack.cr',
                                  active: true,
                                  status: 'Activo',
                                  role: 'Entrenador',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.userRoleCardModel5,
                                updateCallback: () => safeSetState(() {}),
                                child: UserRoleCardWidget(
                                  initial: 'AS',
                                  name: 'Andrés Solano',
                                  email: 'a.solano@gymtrack.cr',
                                  active: true,
                                  status: 'Activo',
                                  role: 'Cliente',
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

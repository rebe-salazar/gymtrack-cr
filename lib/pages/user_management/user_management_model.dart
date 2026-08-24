import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'user_management_widget.dart' show UserManagementWidget;
import 'package:flutter/material.dart';

class UserManagementModel extends FlutterFlowModel<UserManagementWidget> {
  ///  Local state fields for this page.

  DocumentReference? usuarioSeleccionado;

  String nombreSeleccionado = 'Seleccione un usuario';

  String correoSeleccionado = 'Seleccione un usuario';

  String rolSeleccionado = 'Seleccione un usuario';

  String estadoSeleccionado = 'Seleccione un estado';

  String? textoBusqueda;

  ///  State fields for stateful widgets in this page.

  // State field(s) for txtFBuscarPorNombre widget.
  FocusNode? txtFBuscarPorNombreFocusNode;
  TextEditingController? txtFBuscarPorNombreTextController;
  String? Function(BuildContext, String?)?
      txtFBuscarPorNombreTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtFBuscarPorNombreFocusNode?.dispose();
    txtFBuscarPorNombreTextController?.dispose();
  }
}

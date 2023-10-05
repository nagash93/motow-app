import 'package:motow_app/app/permission/permission_app.dart';
import 'package:motow_app/app/permission/permission_status.dart';
import 'package:motow_app/app/permission/permission_state.dart';
import 'package:motow_app/app/permission/permission_type.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionHandler implements PermissionApp {
  @override
  Future<PermissionState> getPermissionState(PermissionType permissionType) async {
    switch (permissionType) {
      case PermissionType.location:
        final status = await Permission.location.status;
        return status.toPermissionState();
    }
  }
}
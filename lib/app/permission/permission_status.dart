import 'package:motow_app/app/permission/permission_app.dart';
import 'package:permission_handler/permission_handler.dart';

extension Status on PermissionStatus {
  PermissionState toPermissionState() {
    switch (this) {
      case PermissionStatus.denied:
        return PermissionState.denied;
      default:
      return PermissionState.granted;
    }
  }
}
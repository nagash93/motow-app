import 'package:motow_app/app/permission/permission_state.dart';
import 'package:permission_handler/permission_handler.dart';

extension Status on PermissionStatus {
  PermissionState toPermissionState() {
    switch (this) {
      case PermissionStatus.denied:
        return PermissionState.denied;
      case PermissionStatus.granted:
        return PermissionState.granted;
      case PermissionStatus.restricted:
        return PermissionState.restricted;
      case PermissionStatus.limited:
        return PermissionState.limited;
      case PermissionStatus.permanentlyDenied:
        return PermissionState.permanentlyDenied;
      case PermissionStatus.provisional:
        return PermissionState.provisional;
    }
  }
}
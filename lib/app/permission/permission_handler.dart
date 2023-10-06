import 'package:motow_app/app/permission/permission_app.dart';
import 'package:motow_app/app/permission/permission_status.dart';
import 'package:motow_app/app/permission/permission_state.dart';
import 'package:motow_app/app/permission/permission_type.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionHandler implements PermissionApp {
  @override
  Future<PermissionState> permissionState(PermissionType type) async {
    late PermissionStatus status;
    switch (type) {
      case PermissionType.location:
        status = await Permission.location.status;
        break;
    }

    return status.toPermissionState();
  }

  @override
  Future<PermissionState> requestPermission(PermissionType type) async {
    late PermissionStatus status;
    switch (type) {
      case PermissionType.location:
        status = await Permission.location.request();
        break;
    }

    return status.toPermissionState();
  }

  @override
  Future<bool> serviceStatus(PermissionType type) async {
    late bool serviceStatus;
    switch (type) {
      case PermissionType.location:
        serviceStatus = await Permission.location.serviceStatus.isEnabled;
        break;
    }

    return serviceStatus;
  }

  @override
  Future<bool> openAppSettings() async {
    return await openAppSettings();
  }
}
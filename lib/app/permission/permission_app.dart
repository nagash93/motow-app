import 'package:motow_app/app/permission/permission_state.dart';
import 'package:motow_app/app/permission/permission_type.dart';

abstract class PermissionApp {
  Future<PermissionState> permissionState(PermissionType type);
  Future<PermissionState> requestPermission(PermissionType type);
  Future<bool> serviceStatus(PermissionType type);
  Future<bool> openAppSettings();
}
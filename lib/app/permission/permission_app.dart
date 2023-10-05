import 'package:motow_app/app/permission/permission_state.dart';
import 'package:motow_app/app/permission/permission_type.dart';

abstract class PermissionApp {
  Future<PermissionState> getPermissionState(PermissionType permissionType);
}
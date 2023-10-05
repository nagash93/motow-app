enum PermissionType {
  location
}

enum PermissionState {
  denied,
  granted,
  restricted,
  limited,
  permanentlyDenied,
  provisional,
}

abstract class PermissionApp {
  Future<PermissionState> getPermissionState(PermissionType permissionType);
}
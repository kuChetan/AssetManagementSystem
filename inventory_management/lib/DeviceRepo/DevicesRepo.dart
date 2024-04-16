import 'package:inventory_management/Models/Equipment.dart';
import 'package:inventory_management/Network/DeviceApi.dart';

class DevicesRepo {
  DeviceApi _deviceApi = DeviceApi();
  Future<List<Equipment>> getAllEquipments() => _deviceApi.getAllEquipments();
}
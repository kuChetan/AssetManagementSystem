import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:inventory_management/Models/Equipment.dart';
import 'package:inventory_management/Network/DeviceApi.dart';

class DeviceProvider extends ChangeNotifier {
  List<Equipment> _equipments = [];
  List<Equipment> get equipmets => [];
  final DeviceApi _deviceApi = DeviceApi();
  void getEquipments(List<Equipment> equipmentFromServer){
    _equipments = equipmentFromServer;
    notifyListeners();
  }

  Future<void> getEquipFromServer() async {
    
    //TODO: Check time snapshot for better option 
     final response = await _deviceApi.getAllEquipments();
     _equipments = response;
     notifyListeners();
    //  return _equipments;
  }
}
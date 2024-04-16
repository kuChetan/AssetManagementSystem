import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:inventory_management/Models/Equipment.dart';

class DeviceApi{
  List<Equipment>? _equipmentList;

  final successCode = 200;

  Future<List<Equipment>> getAllEquipments() async {
    final response = await http.get(Uri.parse("http://192.168.1.34:8080/api/getEquipments"),
        headers: {
          'Content-type': 'application/json',
          "Accept": "application/json;charset=UTF-8",
          // "authorization": ZATRI_API_KEY
        });
    if (response.statusCode == 200) {
      // final Map<String,dynamic> stopResult = jsonDecode(response.body);
      // List<Stop> stops = (stopResult as List<dynamic>).map((e) => Stop.fromJson(e)).toList();
      var list = json.decode(response.body) as List;
      List<Equipment> equipments = list.map((i) => Equipment.fromJson(i)).toList();
      print(equipments.runtimeType);
      print(equipments[0].runtimeType);
      return equipments;
    } else {
      throw HttpException(
          'Unexpected status code ${response.statusCode}:'
          ' ${response.reasonPhrase}',
          uri: Uri.parse('http://192.168.1.34:8080/api/getEquipments'),
          );
    }
  }

}
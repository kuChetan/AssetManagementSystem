import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddDeviceForm extends StatefulWidget {
  const AddDeviceForm({Key? key}) : super(key: key);

  @override
  _AddDeviceFormState createState() => _AddDeviceFormState();
}

class _AddDeviceFormState extends State<AddDeviceForm> {
  final _formKey = GlobalKey<FormState>();

  String? modelNumber;
  String? serialNumber;
  List<String> spareParts = [];
  DateTime? warrantyUpto;
  DateTime? dateOfPurchasing;
  String? status;
  List<String> maintenance = [];
  List<String> orderList = [];
  String? manufacturer;
  String? equipmentType;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(labelText: 'Model Number'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter model number';
              }
              return null;
            },
            onSaved: (newValue) => modelNumber = newValue,
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Serial Number'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter serial number';
              }
              return null;
            },
            onSaved: (newValue) => serialNumber = newValue,
          ),
          // Add more TextFormFields for other parameters
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                // Now you can save the form data to the database
                // using the values stored in the variables
              }
            },
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }
}
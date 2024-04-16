import 'dart:js';

import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TicketScreen extends StatefulWidget {
  @override
  State<TicketScreen> createState() => _DevicesScreenState();
}

class _DevicesScreenState extends State<TicketScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Devices'),
      ),
      body: ListView.builder(
        itemCount: devices.length,
        itemBuilder: (context, index) {
          Equipment equipment = devices[index];
          return DeviceCard(
            equipment: equipment,
            onRaiseTicket: (){
              showRaiseTicketDialog(context, equipment);
            },
           
          );
        },
      ),
    );
  }
}

void showRaiseTicketDialog(BuildContext context, Equipment equipment) {
  TextEditingController nameController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  TextEditingController messageController = TextEditingController();

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Raise a Ticket'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Device: ${equipment.name}'),
            SizedBox(height: 10),
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Your Name'),
            ),
            SizedBox(height: 10),
            TextField(
              controller: contactController,
              decoration: InputDecoration(labelText: 'Contact Details'),
            ),
            SizedBox(height: 10),
            TextField(
              controller: messageController,
              decoration: InputDecoration(labelText: 'Message'),
              maxLines: 3,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              // Handle raising the ticket here
              String name = nameController.text;
              String contactDetails = contactController.text;
              String message = messageController.text;
              
              // Do something with the collected details
              // For example, send the details to an API to create the ticket

              // Close the dialog
              Navigator.pop(context);
            },
            child: Text('Raise Ticket'),
          ),
        ],
      );
    },
  );
}

class DeviceCard extends StatelessWidget {
  final Equipment equipment;
  final VoidCallback onRaiseTicket;

  const DeviceCard({
    required this.equipment,
    required this.onRaiseTicket,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(equipment.name ?? ''),
            subtitle: Text(equipment.assetNumber ?? ''),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Model Number: ${equipment.modelNumber}'),
                Text('Serial Number: ${equipment.serialNumber}'),
                Text('Description: ${equipment.description ?? ''}'),
                SizedBox(height: 16.0),
                Text('Parts List:', style: TextStyle(fontWeight: FontWeight.bold)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: equipment.parts?.map((part) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Name: ${part.name}'),
                          Text('Description: ${part.description}'),
                          SizedBox(height: 8.0),
                        ],
                      ),
                    );
                  }).toList() ?? [],
                ),
                SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: (){
                    onRaiseTicket(BuildContext context, equipment);
                  },
                  child: Text('Raise Ticket'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Equipment {
  final String name;
  final String assetNumber;
  final String modelNumber;
  final String serialNumber;
  final String? description;
  final List<Part> parts;

  Equipment({
    required this.name,
    required this.assetNumber,
    required this.modelNumber,
    required this.serialNumber,
    this.description,
    required this.parts,
  });
}

class Part {
  final String name;
  final String description;

  Part({
    required this.name,
    required this.description,
  });
}

// Sample data
final List<Equipment> devices = [
  Equipment(
    name: 'Device 1',
    assetNumber: 'A123456',
    modelNumber: 'Model 1',
    serialNumber: 'S123456',
    description: 'Description of Device 1',
    parts: [
      Part(name: 'Part 1', description: 'Description of Part 1'),
      Part(name: 'Part 2', description: 'Description of Part 2'),
    ],
  ),
  Equipment(
    name: 'Device 2',
    assetNumber: 'A789012',
    modelNumber: 'Model 2',
    serialNumber: 'S789012',
    description: 'Description of Device 2',
    parts: [
      Part(name: 'Part A', description: 'Description of Part A'),
      Part(name: 'Part B', description: 'Description of Part B'),
    ],
  ),
];
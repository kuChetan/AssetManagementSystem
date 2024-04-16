
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:inventory_management/Models/Equipment.dart';
import 'package:inventory_management/Provider/DeviceProvider.dart';
import 'dart:async';

import 'package:provider/provider.dart';
class DevicesScreen extends StatefulWidget {
  @override
  State<DevicesScreen> createState() => _DevicesScreenState();
}

class _DevicesScreenState extends State<DevicesScreen> {
  bool _expanded = false;

  @override
  void initState() {
    super.initState();
    getEquipmentDetails();
  }

  void getEquipmentDetails() {
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      Provider.of<DeviceProvider>(context as BuildContext, listen: false).getEquipFromServer();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Devices')),
      body: Consumer<DeviceProvider>(
        builder: (BuildContext context, DeviceProvider devices, Widget? child) {
          return ListView.builder(
            itemCount: devices.equipmets.length,
            itemBuilder: (context, index) {
              Equipment equipment = devices.equipmets[index];
              return DeviceCard(
                id: equipment.id,
                // name: equipment.name,
                modelNumber: equipment.modelNumber,
                serialNumber: equipment.serialNumber,
                // parts: equipment.parts,
              );
            },
          );
        },
      ),
    );
  }
}

class DeviceCard extends StatefulWidget {
  final String? id;
  final String? name;
  final String modelNumber;
  final String? serialNumber;
  final List<Part>? parts;

  const DeviceCard({
    this.id,
    this.name,
    required this.modelNumber,
    this.serialNumber,
    this.parts,
    Key? key,
  }) : super(key: key);

  @override
  _DeviceCardState createState() => _DeviceCardState();
}

class _DeviceCardState extends State<DeviceCard> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(widget.name ?? ''),
            subtitle: Text(widget.serialNumber ?? ''),
            trailing: IconButton(
              icon: Icon(_expanded ? Icons.expand_less : Icons.expand_more),
              onPressed: () {
                setState(() {
                  _expanded = !_expanded;
                });
              },
            ),
          ),
          if (_expanded)
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Model Number: ${widget.modelNumber}'),
                  SizedBox(height: 8.0),
                  Text('Parts List:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Column(
                    children: widget.parts!.map((part) {
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
                    }).toList(),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

class Part {
  final String name;
  final String description;

  const Part({
    required this.name,
    required this.description,
  });
}

// return Card(
//       child: ExpansionTile(
//         title: Text(widget.name!),
//         subtitle: Text(widget.assetNumber!),
//         childrenPadding: EdgeInsets.symmetric(horizontal: 16.0),
//         expandedCrossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           SizedBox(height: 8.0),
//           Text('Description: ${widget.description}'),
//           SizedBox(height: 8.0),
//           ElevatedButton(
//             onPressed: () {
//               setState(() {
//                 _expanded = !_expanded;
//               });
//             },
//             child: Text(_expanded ? 'Collapse Parts' : 'Expand Parts'),
//           ),
//           if (_expanded)
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(height: 8.0),
//                 Text(
//                   'Parts List:',
//                   style: TextStyle(fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(height: 4.0),
//                 for (var part in widget.parts!)
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text('Name: ${part.name}'),
//                       Text('Description: ${part.description}'),
//                       SizedBox(height: 8.0),
//                     ],
//                   ),
//               ],
//             ),
//         ],
//       ),
//     );

   // child: ListView(
        //   children: [
        //     DeviceCard(
        //       name: 'Device 1',
        //       assetNumber: '123456',
        //       description: 'This is device 1 description',
        //       parts: [
        //         Part(name: 'Part 1', description: 'Part 1 description'),
        //         Part(name: 'Part 2', description: 'Part 2 description'),
        //       ],
        //     ),
        //     DeviceCard(
        //       name: 'Device 2',
        //       assetNumber: '654321',
        //       description: 'This is device 2 description',
        //       parts: [
        //         Part(name: 'Part A', description: 'Part A description'),
        //         Part(name: 'Part B', description: 'Part B description'),
        //       ],
        //     ),
        //   ],
        // ),
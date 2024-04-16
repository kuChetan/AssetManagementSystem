import 'package:flutter/material.dart';
import 'package:easy_stepper/easy_stepper.dart';

class AssetsTracking extends StatefulWidget {
  @override
  State<AssetsTracking> createState() => _AssetsTrackingState();
}

class _AssetsTrackingState extends State<AssetsTracking> {
  int activeStep = 0;
  int activeStep2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Assets Tracking'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              EasyStepper(
                activeStep: activeStep,
                steps: [
                  // EasyStep(
                   
                  //   title:  
                  //     'Dash 1',
                  //     // textAlign: TextAlign.center,
                  //    icon:const Icon(Icons.man),
                  // ),
                  EasyStep(
                    // customStep: ClipRRect(
                    //   borderRadius: BorderRadius.circular(15),
                    //   child: Opacity(
                    //     opacity: activeStep >= 1 ? 1 : 0.3,
                    //     child: Image.asset('assets/2.png'),
                    //   ),
                    // ),
                    title: 
                      'Dash 2',
                      // textAlign: TextAlign.center,
                     icon:Icon(Icons.man),
                  ),
                  EasyStep(
                    // customStep: ClipRRect(
                    //   borderRadius: BorderRadius.circular(15),
                    //   child: Opacity(
                    //     opacity: activeStep >= 2 ? 1 : 0.3,
                    //     child: Image.asset('assets/3.png'),
                    //   ),
                    // ),
                    title: 
                      'Dash 3',
                       icon:Icon(Icons.man),
                  ),
                  EasyStep(
                    // customStep: ClipRRect(
                    //   borderRadius: BorderRadius.circular(15),
                    //   child: Opacity(
                    //     opacity: activeStep >= 3 ? 1 : 0.3,
                    //     child: Image.asset('assets/4.png'),
                    //   ),
                    // ),
                    title: 
                      'Dash 4',
                       icon: Icon(Icons.man),
                  ),
                  EasyStep(
                    // customStep: ClipRRect(
                    //   borderRadius: BorderRadius.circular(15),
                    //   child: Opacity(
                    //     opacity: activeStep >= 4 ? 1 : 0.3,
                    //     child: Image.asset('assets/5.png'),
                    //   ),
                    // ),
                    title: 
                      'Dash 5',
                       icon:Icon(Icons.man),
                  ),
                ],
              ),
              // SizedBox(
              //   height: 200,
              //   width: double.infinity,
              //   child: Column(
              //     children: [
              //       Image.asset(
              //         'assets/1.png',
              //         height: 150,
              //       ),
              //       const SizedBox(height: 5),
              //       Text('Dash 1'),
              //     ],
              //   ),
              // ),
              // Add other EasyStepper widgets and UI elements here
            ],
          
        ),
      ),
      ),
    );
  }
}

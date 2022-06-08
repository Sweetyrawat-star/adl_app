/*
import 'package:flutter/material.dart';

class StepperDemo extends StatefulWidget {
  StepperDemo() : super();

  final String title = "Stepper Demo";

  @override
  StepperDemoState createState() => StepperDemoState();
}

class StepperDemoState extends State<StepperDemo> {
  //
  int current_step = 0;
  List<Step> steps = [
    Step(
      title: Text('Step 1'),
      content: Text('Hello!'),
      isActive: true,
    ),
    Step(
      title: Text('Step 2'),
      content: Text('World!'),
      isActive: true,
    ),
    Step(
      title: Text('Step 3'),
      content: Text('Hello World!'),
      state: StepState.complete,
      isActive: true,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: AppBar(
        // Title
        title: Text("Simple Stepper Demo"),
      ),
      // Body
      body: Container(
        child: Stepper(
          currentStep: this.current_step,
          steps: steps,
          type: StepperType.horizontal,
          onStepTapped: (step) {
            setState(() {
              current_step = step;
            });
          },
          onStepContinue: () {
            setState(() {
              if (current_step < steps.length - 1) {
                current_step = current_step + 1;
              } else {
                current_step = 0;
              }
            });
          },
          onStepCancel: () {
            setState(() {
              if (current_step > 0) {
                current_step = current_step - 1;
              } else {
                current_step = 0;
              }
            });
          },
        ),
      ),
    );
  }
}*//*


import 'package:flutter/material.dart';
import 'package:im_stepper/stepper.dart';

class IconStepperDemo extends StatefulWidget {
  @override
  _IconStepperDemo createState() => _IconStepperDemo();
}

class _IconStepperDemo extends State<IconStepperDemo> {
  // MUST BE MAINTAINED, SEPARATELY.
  int currentIndex = 0;

  // THESE MUST BE USED TO CONTROL THE STEPPER FROM EXTERNALLY.
  bool goNext = false;
  bool goPrevious = false;
  void add(){
    setState(() {
      goNext = true;
      goPrevious = false;

      if (currentIndex < 3) {
        currentIndex++;
      }
    });
  }
  void minus (){
    setState(() {
      goNext = false;
      goPrevious = true;

      if (currentIndex > 0) {
        currentIndex--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Icon Stepper Example'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              */
/*decoration: BoxDecoration(
                color: Colors.blueGrey,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 1.0,
                    blurRadius: 2.0,
                  )
                ],
                // borderRadius: BorderRadius.circular(5.0),
              ),*//*

              child: GestureDetector(
                onTap: () {
                   setState(() {
                     add();
                     */
/*else{
                       return minus();
                     }*//*

                   });

                  // MUST TO CONTROL STEPPER FROM EXTERNAL BUTTONS.s
                },
                child: IconStepper.externallyControlled(
                  goNext: goNext,
                  goPrevious: goPrevious,
                  direction: Axis.horizontal,
                  stepColor: Colors.white,
                  activeStepColor: Colors.lightGreen,
                  lineColor: Colors.green,
                  lineLength: 75,
                  steppingEnabled: true,
                  icons: [
                    Icon(Icons.home,color: currentIndex==0? Colors.white:Colors.black45),
                    Icon(Icons.person,color: currentIndex==1?Colors.white:Colors.black45,),
                    Icon(Icons.account_balance,color: currentIndex==2? Colors.white: Colors.black45,),
                    Icon(Icons.access_time,color: currentIndex==3?Colors.white:Colors.black45,),
                  ],

                ),
              ),
            ),
            */
/*Container(
              decoration: BoxDecoration(
                border: Border.all(width: 0.1),
              ),
              padding: EdgeInsets.all(8.0),
              alignment: Alignment.centerLeft,
              child: Text(header()),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(5.0),
                child: FittedBox(
                  child: Center(
                    child: Text('${currentIndex + 1}'),
                  ),
                ),
              ),
            ),*//*

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RaisedButton(
                  onPressed: () {
                    // MUST TO CONTROL STEPPER FROM EXTERNAL BUTTONS.
                    setState(() {
                      goNext = false;
                      goPrevious = true;

                      if (currentIndex > 0) {
                        currentIndex--;
                      }
                    });
                  },
                  child: Text('Previous'),
                ),
                RaisedButton(
                  onPressed: () {
                    // MUST TO CONTROL STEPPER FROM EXTERNAL BUTTONS.
                    setState(() {
                      goNext = true;
                      goPrevious = false;

                      if (currentIndex < 3) {
                        currentIndex++;
                      }
                    });
                  },
                  child: Text('Next'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  String header() {
    switch (currentIndex) {
      case 0:
        return 'Educational Background';

      case 1:
        return 'Professional Background';

      case 2:
        return 'Awards';

      case 3:
        return 'Sports';

      default:
        return 'Unknown';
    }
  }
}

*/

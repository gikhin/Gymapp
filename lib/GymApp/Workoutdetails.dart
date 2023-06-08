
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Detials extends StatefulWidget {
  const Detials({Key? key}) : super(key: key);

  @override
  State<Detials> createState() => _DetialsState();
}

class _DetialsState extends State<Detials> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Exercise details',style: TextStyle(fontWeight: FontWeight.bold)),backgroundColor: Colors.greenAccent,),
     backgroundColor: Colors.black,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                leading: Container(height: 50,width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/pushup.gif'),
                    ),
                  ),
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 17),
                title: Text('PUSH-UPS',style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text(
                    'Push-ups are a popular bodyweight exercise that primarily target the chest, shoulders, and triceps. They are performed by lying face-down on the floor with '
                        'hands shoulder-width apart, then pushing the body up and down using the arms.Do it for 30 seconds.',
                    style: TextStyle(fontSize: 16),
              ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                leading: Container(height: 50,width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/pull-up-workout.gif'),
                    ),
                  ),
                ),

                contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 17),
                title: Text('PULL-UPS',style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text(
                  'Pull-ups are an effective upper body exercise that targets the back, shoulders, and arms, helping to '
                      'strengthen and develop upper body strength. By gripping an overhead bar and pulling your'
                      ' body upward, you can improve posture and enhance muscularity.Do it for 30 seconds.',
                  style: TextStyle(fontSize: 16),
              ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                leading: Container(height: 50,width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/squats.gif'),
                    ),
                  ),
                ),

                contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 17),
                title: Text('SQUATS',style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text(
                  'Squats are a compound exercise that engages multiple muscle groups, including the quadriceps, glutes, and '
                      'hamstrings, making them a great choice for lower body strength and development. By lowering your body i'
                      'nto a squat position and then standing back up, you can improve '
                      'leg strength and overall functional fitness.Do it for 30 seconds.',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                leading: Container(height: 50,width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/climbers.gif'),
                    ),
                  ),
                ),

                contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 17),
                title: Text('CLIMBERS',style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text(
                  'Mountain climbers are a dynamic exercise that targets multiple muscle groups, including '
                      'the core, shoulders, and legs, making them a fantastic choice for full-body conditioning. By'
                      ' assuming a push-up position and alternately bringing your knees '
                      'towards your chest, you can improve cardiovascular endurance and enhance overall '
                      'strength and stability. 30 seconds.',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                leading: Container(height: 50,width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/deadlift.gif'),
                    ),
                  ),
                ),

                contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 17),
                title: Text('DEADLIFTS',style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text(
                  'Deadlifts are a compound exercise that primarily targets the muscles of the lower back,'
                      ' glutes, and hamstrings, while also engaging the core and upper body. By lifting a barbell'
                      ' or weights from the ground while maintaining proper form, deadlifts can help increase '
                      'overall strength and build a strong posterior chain. Incorporating deadlifts into your workout routine can enhance '
                      'functional strength and promote better posture..Do it for 30 seconds.',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                leading: Container(height: 50,width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/plank.gif'),
                    ),
                  ),
                ),

                contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 17),
                title: Text('Plank',style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text(
                  'Planks are a simple yet effective exercise that engages the core muscles, including '
                      'the abs, back, and stabilizing muscles. By assuming a push-up position and '
                      'holding the body in a straight line for a set duration, planks can help'
                      ' improve core strength, stability, and endurance. Adding planks to your '
                      'routine can contribute to better posture and overall body stability..Do it for 30 seconds.',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ),
        ],

      ),
    );
  }
}

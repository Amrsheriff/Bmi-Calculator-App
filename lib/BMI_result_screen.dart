import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget {


  final double result;
  final bool isMale;
  final int age;

  const BMIResultScreen({Key? key,
    required this.result,
    required this.isMale,
    required this.age,
}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        // leading: IconButton(
        //   onPressed: (){
        //     Navigator.pop(context);
        //   } ,
        //   icon: const Icon(
        //     Icons.keyboard_arrow_left
        //   ),
        // ),
        backgroundColor: Colors.black,
        title: const Text(
          'BMI Result',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Expanded(child: Container()),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      20.0,
                    ),
                    // boxShadow: const [BoxShadow(
                    //   color: Colors.white,
                    //   blurRadius: 0,
                    //   offset: Offset(0, 0),
                    // )],
                    color: Colors.grey[800]
                ),
                child: Column(
                  children:[
                    const SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'Age : $age',
                      style: const TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Gender : ${isMale? 'Male' : 'Female'}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Result : ${result.toStringAsFixed(1)} ',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'BMI',
                          style: TextStyle(
                            color: Colors.deepOrange[400],
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Row(
                      children: [
                        const Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.only(
                                start: 20.0
                            ),
                            child: Text(
                                'Underweight',
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                  'Normal',
                                style: TextStyle(
                                  color: Colors.lightGreenAccent,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.only(
                                start: 15.0
                            ),
                            child: Text(
                                'Overweight',
                              style: TextStyle(
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    1.0,
                                  ),
                                color: Colors.blue,
                              ),
                              height: 5.0,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  1.0,
                                ),
                                color: Colors.lightGreen,
                              ),
                              height: 5.0,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  1.0,
                                ),
                                color: Colors.red,
                              ),
                              height: 5.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: const [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.only(
                                start: 5.0
                            ),
                            child: Text(
                                '16.0',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.only(
                                start: 15.0
                            ),
                            child: Text(
                                '18.5',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.only(
                                start: 40.0
                            ),
                            child: Text(
                                '25.0',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.only(
                                start: 50.0,
                                end: 5.0,
                            ),
                            child: Text(
                                '40.0',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                  ]
                ),
              ),
            ),

          ),
          //Expanded(child: Container()),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 50.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.deepOrange[400],
                  ),
                  child: TextButton(
                    onPressed: (){
                      Navigator.pop(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BMIResultScreen(
                              age: age,
                              isMale: isMale,
                              result: result,
                            )
                        ),
                      );
                    },
                    child: const Text(
                      'DONE',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Text(
          //   'Gender : ${isMale? 'Male' : 'Female'}',
          //   style: const TextStyle(
          //     fontSize: 25.0,
          //     fontWeight: FontWeight.bold,
          //   ),
          // ),
          // Text(
          //   'Result : $result',
          //   style: const TextStyle(
          //     fontSize: 25.0,
          //     fontWeight: FontWeight.bold,
          //   ),
          // ),
          // Text(
          //   'Age : $age',
          //   style: const TextStyle(
          //     fontSize: 25.0,
          //     fontWeight: FontWeight.bold,
          //   ),
          // ),
        ],
      ),
    );
  }
}

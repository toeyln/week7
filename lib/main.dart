import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.pink.shade50
          ),
          //alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 80.0),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.lock_outlined,         // รูปไอคอน
                      size: 70.0,           // ขนาดไอคอน
                      color: Colors.black,   // สีไอคอน
                    ),
                    SizedBox(width: 8.0),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Please enter password',
                           ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (var i = 1; i <= 3; i++) buildButton(num: i),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (var i = 4; i <= 6; i++) buildButton(num: i),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (var i = 7; i <= 9; i++) buildButton(num: i),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(width: 75.0,
                      height: 75.0,),
                  ),
                  buildButton(num: 0),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(width: 75.0,height: 75.0,
                      child: Icon(
                        Icons.backspace,         // รูปไอคอน
                        size: 30.0,           // ขนาดไอคอน
                        color: Colors.black,   // สีไอคอน
                      ),),
                  )
                ],
              ),

              Padding(padding: const EdgeInsets.all(16.0),
                child: TextButton(
                    child: Text('forgot password'),
                    onPressed: (

                        ){

                    }
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  Widget buildButton({int? num}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: (){},
        child: Container(
            width: 75.0,
            height: 75.0,
            //color: Colors.white, // ห้ามกำหนด color ตรงนี้ ถ้าหากกำหนดใน BoxDecoration แล้ว
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.pinkAccent, width: 4.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2), // สีเงา
                    offset: Offset(2, 4), // ทิศทางของเงาในแนวนอนและแนวตั้ง ตามลำดับ
                    blurRadius: 4.0,
                    spreadRadius: 2.0,
                  )
                ]
            ),
            child: Center(
              child: Text('$num',style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 20.0, color: Colors.black),),
            )

        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int number = 0;
  void Pp(){
    setState(() {
      number++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:Text('โปรแกรมนับเลข')
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("กดปุ่มเพื่อเพิ่มจำนวนตัวเลข",),
            Text("$number",
              style: TextStyle(fontSize: 20,color: Colors.amber),),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: Pp ,
        child:Icon(Icons.add),
      ),
    );
  }
}

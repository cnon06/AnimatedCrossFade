import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool contBool = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image.asset('img/img1.jpg'),
            AnimatedCrossFade(
              
                firstChild: Image.asset('img/img1.jpg', width: 200,),
                secondChild: Image.asset('img/img2.jpg',width: 200,),
                crossFadeState: contBool==false ? CrossFadeState.showFirst : CrossFadeState.showSecond,
                duration: const Duration(seconds: 2)),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    contBool = !contBool;
                  });
                },
                child: const Text('Start')),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(GreetingApp());
}

class GreetingApp extends StatelessWidget {
  const GreetingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeActivity()
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

 snackBar(msg, context){
   ScaffoldMessenger.of(context).showSnackBar(
     SnackBar(content: Text(msg)),
   );
 }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       //backgroundColor: Colors.white,
       title: Text('Greeting App'),
     ),
       body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Center(
                  child: Text(
                'Hello, World!',
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 20),
              )),
            ),
            Container(
              child: Text('Welcome to Flutter!'),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                  width: 300,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: NetworkImage('https://styles.redditmedia.com/t5_31pvd/styles/communityIcon_q2buyd5ykld21.jpg?format=pjpg&s=e35b345a206af424c39b43accfb1e337cced52e6'),
                    fit: BoxFit.cover),
                    ),
                  ),
            ),
            OutlinedButton(onPressed: (){snackBar('Button Pressed', context);}, child: Text('Press me'),
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
              // elevation: 5,
              // shadowColor: Colors.green,

            ),)
          ],
        ));
  }
}



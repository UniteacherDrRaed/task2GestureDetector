import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.add),
        title: const Text("GestureDetector"),
        centerTitle: true,
        backgroundColor: Colors.brown,
        actions: [
          IconButton(
              onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(
                    const  SnackBar(duration: Duration(seconds: 2),
                        backgroundColor: Colors.green,
                        showCloseIcon: true,
                        closeIconColor: Colors.white,
                        content: Text("Example 1"))
                );
              },
              icon: const Icon(Icons.message))
        ],
      ),
      body: GestureDetector(
        onTap: (){
          ScaffoldMessenger.of(context).showSnackBar(
              const  SnackBar(duration: Duration(seconds: 2),
                  backgroundColor: Colors.pink,
                  showCloseIcon: true,
                  closeIconColor: Colors.white,
                  content: Text("Example 2"))
          );
        },
        child: Center(
          child: Container(
            margin: const EdgeInsets.all(10),
            padding:const EdgeInsets.all(10),
            height: 250,
            width: 150,
            decoration: const BoxDecoration(
                gradient:  LinearGradient(
                    colors:  [
                      Colors.lightGreen,
                      Colors.white,
                    ]
                ),
                boxShadow: [
                  BoxShadow(
                    color:Colors.blue,
                    offset: Offset(4,5),
                  )
                ]
            ),
            child: const Text("This is a container"),
          ),
        ),
      ),
    );
  }
}

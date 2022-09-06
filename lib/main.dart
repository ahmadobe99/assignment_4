import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool flutterCourse = false;
  bool reactCourse = false;
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Container(
              child: Column(
            children: [
              Text(
                "Please selecet you Course!",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.purple,
                    fontWeight: FontWeight.bold),
              ),
              Divider(height: 35),
              CheckboxListTile(
                  secondary: Icon(
                    Icons.book,
                    color: Colors.amber,
                  ),
                  subtitle: Text("based on dart programming",
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 20,
                          color: Colors.green[700])),
                  title: Text(
                    "Flutter",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  ),
                  value: flutterCourse,
                  onChanged: ((val) {
                    setState(() {
                      flutterCourse = val!;
                      
                    });
                  })),
              CheckboxListTile(
                  secondary: Icon(
                    Icons.book,
                    color: Colors.amber,
                  ),
                  subtitle: Text(
                    "based on dart programming",
                    style: TextStyle(
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                        color: Colors.green[700]),
                  ),
                  title: Text(
                    "React",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  ),
                  value: reactCourse,
                  onChanged: ((val) {
                    setState(() {
                      reactCourse = val!;
                    });
                  })),
              if (flutterCourse == true)
                Image(
                    image: NetworkImage(
                        "https://media.istockphoto.com/id/1365418000/photo/3d-rendering-3d-illustration-of-a-black-water-propeller.webp?s=612x612&w=is&k=20&c=Ov-18O3oucbX_C5XUCJPSBq6HQMDbCF6RRoDkYSiqZQ="))
                        ,
              if (reactCourse == true)
                Image(
                    image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2018/01/11/09/42/network-3075716_960_720.jpg"))
                        
            ],
          )),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: const Text('BMI'),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.topCenter,
        child: ListView(
          padding: const EdgeInsets.all(2),
          children: [
            Image.asset(
              'images/bmilogo.png',
              height: 85,
              width: 75,
            ),
            Container(
              margin: const EdgeInsets.all(3),
              height: 245,
              color: Colors.grey.shade300,
              child: Column(
                children: [
                  const TextField(
                    cursorColor: null,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Age',
                      hintText: 'e.g: 34',
                      icon: Icon(Icons.person_outline),
                    ),
                  ),
                  const TextField(
                    cursorColor: null,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Height in Feet',
                      hintText: 'e.g: 5.6',
                      icon: Icon(Icons.insert_chart),
                    ),
                  ),
                  const TextField(
                    cursorColor: null,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Weight in lbs',
                      hintText: 'e.g: 180 ',
                      icon: Icon(Icons.line_weight),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(20),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pinkAccent,
                        elevation: 0,
                      ),
                      child: const Text(
                        'Calculate',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: const [
                Text(
                  'BMI: ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.blueAccent,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                ),
                Text(
                  'Overweight: ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.pinkAccent,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

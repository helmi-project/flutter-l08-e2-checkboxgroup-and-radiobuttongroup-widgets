import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Checkbox & Radio Buttons'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 10.0),
              Text(
                'Select Your Pizza Toppings :',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              CheckboxGroup(
                labelStyle: TextStyle(fontSize: 20.0),
                labels: <String>[
                  "Onions",
                  "Mushrooms",
                  "Black olives",
                  "Green peppers",
                  "Extra cheese",
                ],
                onSelected: (List<String> checked) => print(checked.toString()),
              ),
              SizedBox(height: 10.0),
              Text(
                'Select Your Pizza Size :',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              RadioButtonGroup(
                labelStyle: TextStyle(fontSize: 20.0),
                labels: <String>[
                  "Small",
                  "Medium",
                  "Large",
                ],
                onSelected: (String selected) => print(selected),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

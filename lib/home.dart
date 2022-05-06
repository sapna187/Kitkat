import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Example extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
//  List<String> _locations = ['Please choose a location', 'A', 'B', 'C', 'D']; // Option 1
//  String _selectedLocation = 'Please choose a location'; // Option 1
  List<String> _locations = ['A', 'B', 'C', 'D']; // Option 2
  String? _selectedLocation; // Option 2

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: DropdownButton(
            hint: Text('Please choose a location'), // Not necessary for Option 1
            value: _selectedLocation,
            onChanged: (newValue) {
              setState(() {
                _selectedLocation = newValue as String;
              });
            },
            items: _locations.map((location) {
              return DropdownMenuItem(
                child: new Text(location),
                value: location,
              );
            }).toList(),
          ),

      ),
    );
  }
}

import 'package:flutter/material.dart';

class cyclepage extends StatefulWidget {
  @override
  _cyclepageState createState() => _cyclepageState();
}

class _cyclepageState extends State<cyclepage> {
  String _selectedItem = 'Option 1';
  List<String> _buttonListItems = ['Option 1', 'Option 2', 'Option 3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('My Page'),
        actions: [
          ButtonBar(
            children: _buttonListItems.map<Widget>((String value) {
              return TextButton(
                child: Text(value),
                onPressed: () {
                  setState(() {
                    _selectedItem = value;
                  });
                },
              );
            })
                .toList(),
          ),
        ],
      ),
      body: Center(
        child: Text('Content goes heree'),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class RowsScreen extends StatelessWidget {
  static final route = 'rows';
  const RowsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rows screen"),
      ),
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Element 1"),
              Container(
                color: Colors.green,
                width: 50,
                height: 50,
              ),
              Text("Element 2"),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.red,
                  child: Text("Hamza"),
                ),
              ),
              Icon(Icons.phone),
              ElevatedButton(
                onPressed: () {},
                child: Text("call"),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                child: Text("Hamza"),
                color: Colors.yellow,
              ),
              Spacer(),
              Icon(Icons.phone),
              ElevatedButton(
                onPressed: () {},
                child: Text("call"),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Container(
                      color: Colors.red,
                      child: Text("Hamza"),
                    ),
                    Spacer(),
                    Container(
                      color: Colors.red,
                      child: Text("Hamza"),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Text("Hello"),
                  Text("Mr Hamza"),
                ],
              ),
              Icon(Icons.phone),
              ElevatedButton(
                onPressed: () {},
                child: Text("call"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

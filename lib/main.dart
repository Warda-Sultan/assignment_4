import 'package:flutter/material.dart';

// Custom Button class inheriting from ElevatedButton
class MyButton extends ElevatedButton {
  final Color backgroundColor;
  final Color foregroundColor;

  MyButton({
    Key? key,
    required VoidCallback onPressed,
    required Widget child,
    this.backgroundColor = Colors.amber, // Default background color
    this.foregroundColor = Colors.purpleAccent, // Default foreground color
  }) : super(
    key: key,
    onPressed: onPressed,
    child: child,
    style: ElevatedButton.styleFrom(
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
    ),
  );
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Assignment No. 4'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyButton(
                onPressed: () => print('Button 1 Pressed'),
                child: Text('Button 1'),
              ),
              SizedBox(height: 30),
              MyButton(
                onPressed: () => print('Button 2 Pressed'),
                child: Text('Button 2'),
                backgroundColor: Colors.tealAccent,
                foregroundColor: Colors.redAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

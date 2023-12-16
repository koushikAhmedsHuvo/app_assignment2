import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Test extends StatefulWidget {
  final String name;

  const Test({super.key, required this.name});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.name,
        style: isChecked
            ? const TextStyle(
                fontWeight: FontWeight.w500,
                fontFamily: 'SourceSansPro',
                fontSize: 17.0,
                decoration: TextDecoration.lineThrough)
            : const TextStyle(
                fontWeight: FontWeight.w500,
                fontFamily: 'SourceSansPro',
                fontSize: 17.0,
              ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: (bool? value) {
          setState(() {
            isChecked = value!;
          });
        },
      ),
    );
  }
}

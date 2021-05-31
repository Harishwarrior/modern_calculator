import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color color;
  final String text;
  const CustomButton({
    Key? key,
    required this.text,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: () {},
        child: Text(
          this.text,
          style: TextStyle(fontSize: 24.0, color: this.color),
        ),
      ),
      height: 60.0,
      width: 60.0,
      decoration: BoxDecoration(
          color: Color(0xFF272B34),
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
    );
  }
}

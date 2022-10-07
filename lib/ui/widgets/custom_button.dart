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
    Offset distance = Offset(10, 10);
    double blur = 20;

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
        color: Color(0xFF292D36), // 0xFF272B34
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.05),

            blurRadius: blur,
            offset: -distance, // changes position of shadow
          ),
          BoxShadow(
            color: Colors.black.withOpacity(0.2),

            blurRadius: blur,
            offset: distance, // changes position of shadow
          ),
        ],
      ),
    );
  }
}

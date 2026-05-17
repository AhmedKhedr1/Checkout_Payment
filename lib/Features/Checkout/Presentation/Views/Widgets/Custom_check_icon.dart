
import 'package:flutter/material.dart';

class Custom_check_icon extends StatelessWidget {
  const Custom_check_icon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 50,
      backgroundColor: Color(0xffd9d9d9),
      child: CircleAvatar(
        radius: 40,
        backgroundColor: Color(0xff34A853),
        child: Icon(
          Icons.check,
          color: Colors.white,
          size: 60,
        ),
      ),
    );
  }
}

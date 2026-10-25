import 'package:checkout_payment/Core/utils/Styless.dart';
import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  const Custombutton(
      {super.key, required this.title, this.onTap, this.isLoading = false});
  final String title;
  final void Function()? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 350,
        height: 73,
        decoration: ShapeDecoration(
          color: Color(0xff34A853),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        ),
        child: Center(
          child: isLoading
              ? CircularProgressIndicator()
              : Text(
                  title,
                  style: Styless.style22,
                ),
        ),
      ),
    );
  }
}

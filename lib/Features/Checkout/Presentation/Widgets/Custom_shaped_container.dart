import 'package:flutter/material.dart';

class CustomShapedContainer extends StatelessWidget {
  const CustomShapedContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: double.infinity,
            height: 700,
            decoration: ShapeDecoration(
              color: Color(0xffD9D9D9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          Positioned(
              left: -20,
              bottom: MediaQuery.sizeOf(context).height * 0.2,
              child: CircleAvatar(
                backgroundColor: Colors.white,
              )),
          Positioned(
              right: -20,
              bottom: MediaQuery.sizeOf(context).height * 0.2,
              child: CircleAvatar(
                backgroundColor: Colors.white,
              )),
          Positioned(
            top: -50,
            left: 0,
            right: 0,
            child: CircleAvatar(
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
            ),
          )
        ],
      ),
    );
  }
}

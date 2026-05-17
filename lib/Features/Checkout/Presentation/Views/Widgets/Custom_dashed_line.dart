
import 'package:flutter/material.dart';

class Custom_dashed_line extends StatelessWidget {
  const Custom_dashed_line({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        20,
        (index) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: Container(
                color: Color(0xffB8B8B8),
                height: 3,
              ),
            ),
          );
        },
      ),
    );
  }
}

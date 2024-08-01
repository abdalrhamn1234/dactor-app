import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InputWidget extends StatelessWidget {
  const InputWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.grey.shade100, borderRadius: BorderRadius.circular(12)),
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(top: 10),
      child: TextFormField(
        decoration: InputDecoration(
            hintText: "Search doctor or health issue",
            prefixIcon: Container(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: SvgPicture.asset("assets/svg/search-normal.svg"),
            ),
            border: InputBorder.none,
            hintStyle: const TextStyle(
              fontSize: 15,
              color: Color(0xFF8696BB),
            )),
      ),
    );
  }
}

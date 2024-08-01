import 'package:doctor_app/widget/icon_text.dart';
import 'package:flutter/material.dart';

class DoctorWidget extends StatelessWidget {
  const DoctorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF4894FE),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          ListTile(
            dense: true,
            contentPadding: EdgeInsets.zero,
            leading: Image.asset("assets/images/profile.png"),
            title: const Text(
              "Dr. Imran Syahir",
              style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
            ),
            subtitle: const Text(
              "General Doctor",
              style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
            ),
            trailing: const Icon(Icons.arrow_forward_ios_rounded, color: Colors.white),
          ),
          Divider(
            color: Colors.white.withOpacity(0.14),
            height: 8,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Row(
              children: [
                IconTextWidget(
                  color: Colors.white,
                  iconPath: "assets/svg/calendar.svg",
                  text: "Sunday, 12 June",
                ),
                Spacer(),
                IconTextWidget(
                  color: Colors.white,
                  iconPath: "assets/svg/clock.svg",
                  text: "11:00 - 12:00 AM",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

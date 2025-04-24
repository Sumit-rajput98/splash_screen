import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../../../constants/colors.dart';

class MenuList extends StatelessWidget {
  final IconData leadingIcon;
  final String menuName;
  bool prefixIcon;
  final Color? textColor;
  MenuList({
    super.key,
    required this.leadingIcon,
    required this.menuName,
    required this.prefixIcon,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: tAccentColor.withOpacity(0.1),
        ),
        child: Icon(leadingIcon, color: tAccentColor),
      ),
      title: Text(
        menuName,
        style: GoogleFonts.lato(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: textColor,
        ),
      ),
      trailing:
      prefixIcon
          ? Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.grey.withOpacity(0.1),
        ),
        child: Icon(
          LineAwesomeIcons.angle_right_solid,
          color: Colors.grey,
        ),
      )
          : null,
    );
  }
}